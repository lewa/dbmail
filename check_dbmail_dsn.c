/*
 *  Copyright (C) 2006  Aaron Stone  <aaron@serendipity.cx>
 *
 *   This program is free software; you can redistribute it and/or
 *   modify it under the terms of the GNU General Public License
 *   as published by the Free Software Foundation; either
 *   version 2 of the License, or (at your option) any later
 *   version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, write to the Free Software
 *   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 *
 *  $Id: check_dbmail_dsn.c 1598 2005-02-23 08:41:02Z paul $ 
 *
 *
 *  
 *
 *   Basic unit-test framework for dbmail (www.dbmail.org)
 *
 *   See http://check.sf.net for details and docs.
 *
 *
 *   Run 'make check' to see some action.
 *
 */ 

// Test dsnuser_resolve through all of its pathways.
#include <check.h>
#include "check_dbmail.h"

extern char *configFile;
extern db_param_t _db_params;
extern int quiet;
extern int reallyquiet;

u64_t useridnr;
char *username = "testfailuser";
char *username_domain = "testfailuser@nonexistantdomain";
char *username_mailbox = "testfailuser+foomailbox@nonexistantdomain";

char *alias = "testfailalias@nonexistantdomain";
char *alias_mailbox = "testfailalias+foomailbox@nonexistantdomain";

char *userpart_catchall = "testfailcatchall@";
char *domain_catchall = "@nonexistantdomain";

/*
 *
 * the test fixtures
 *
 */
void setup(void)
{
	configure_debug(5,0);
	if (config_read(configFile) < 0) {
		printf( "Config file not found: %s\n", configFile );
		exit(1);
	}
	GetDBParams(&_db_params);
	db_connect();
	auth_connect();

	GList *alias_add = NULL;
	alias_add = g_list_append(alias_add, alias);

	do_add(username, "testpass", "md5-hash", 0, 0, alias_add, NULL);
	do_add(username_domain, "testpass", "md5-hash", 0, 0, NULL, NULL);
	auth_user_exists(username, &useridnr);
}

void teardown(void)
{
	db_disconnect();
	auth_disconnect();
}

START_TEST(test_resolve_useridnr_exists)
{
	int res;
	deliver_to_user_t delivery;

	dsnuser_init(&delivery);

	delivery.useridnr = useridnr;
	delivery.address = NULL;

	res = dsnuser_resolve(&delivery);
	// Check the DSN struct, too.

	fail_unless(res == 0 && delivery.dsn.class == DSN_CLASS_OK,
			"dsnuser_resolve failed useridnr_exists.");
}
END_TEST

START_TEST(test_resolve_useridnr_dne)
{
	int res;
	deliver_to_user_t delivery;

	dsnuser_init(&delivery);
	// This useridnr doesn't exist unless you've got a
	// big production setup; in which case, don't run check!
	delivery.useridnr = 20394823;
	delivery.address = NULL;

	res = dsnuser_resolve(&delivery);
	// Check the DSN struct, too.

	fail_unless(res == 0 && delivery.dsn.class == DSN_CLASS_FAIL,
			"dsnuser_resolve failed useridnr_dne.");
}
END_TEST

START_TEST(test_resolve_address_dne)
{
	int res;
	deliver_to_user_t delivery;

	dsnuser_init(&delivery);

	delivery.useridnr = 0;
	delivery.address = "I don't exist! I'm not valid, anyhow :-P";

	res = dsnuser_resolve(&delivery);
	// Check the DSN struct, too.

	fail_unless(res == 0 && delivery.dsn.class == DSN_CLASS_FAIL,
			"dsnuser_resolve failed address_dne.");
}
END_TEST

START_TEST(test_resolve_alias)
{
	int res;
	deliver_to_user_t delivery;

	dsnuser_init(&delivery);

	delivery.useridnr = 0;
	delivery.address = alias;

	res = dsnuser_resolve(&delivery);
	// Check the DSN struct, too.

	fail_unless(res == 0 && delivery.dsn.class == DSN_CLASS_OK,
			"dsnuser_resolve failed alias.");
}
END_TEST

START_TEST(test_resolve_alias_mailbox)
{
	int res;
	deliver_to_user_t delivery;

	dsnuser_init(&delivery);

	delivery.useridnr = 0;
	delivery.address = alias_mailbox;

	res = dsnuser_resolve(&delivery);
	// Check the DSN struct, too.

	fail_unless(res == 0 && delivery.dsn.class == DSN_CLASS_OK,
			"dsnuser_resolve failed alias_mailbox.");
}
END_TEST

START_TEST(test_resolve_username)
{
	int res;
	deliver_to_user_t delivery;

	dsnuser_init(&delivery);

	delivery.useridnr = 0;
	delivery.address = username;

	res = dsnuser_resolve(&delivery);
	// Check the DSN struct, too.

	fail_unless(res == 0 && delivery.dsn.class == DSN_CLASS_OK,
			"dsnuser_resolve failed username.");
}
END_TEST

START_TEST(test_resolve_username_mailbox)
{
	int res;
	deliver_to_user_t delivery;

	dsnuser_init(&delivery);

	delivery.useridnr = 0;
	delivery.address = username_mailbox;

	res = dsnuser_resolve(&delivery);
	// Check the DSN struct, too.

	fail_unless(res == 0 && delivery.dsn.class == DSN_CLASS_OK,
			"dsnuser_resolve failed username_mailbox.");
}
END_TEST

START_TEST(test_resolve_domain_catchall)
{
	int res;
	deliver_to_user_t delivery;

	dsnuser_init(&delivery);

	delivery.useridnr = 0;
	delivery.address = "fooblablabla@nonexistantdomain";

	res = dsnuser_resolve(&delivery);
	// Check the DSN struct, too.

	fail_unless(res == 0 && delivery.dsn.class == DSN_CLASS_OK,
			"dsnuser_resolve failed domain catchall.");
}
END_TEST

START_TEST(test_resolve_userpart_catchall)
{
	int res;
	deliver_to_user_t delivery;

	dsnuser_init(&delivery);

	delivery.useridnr = 0;
	delivery.address = "testfailcatchall@stupidwhateverdomain";

	res = dsnuser_resolve(&delivery);
	// Check the DSN struct, too.

	fail_unless(res == 0 && delivery.dsn.class == DSN_CLASS_OK,
			"dsnuser_resolve failed userpart_catchall.");
}
END_TEST


Suite *dbmail_dsn_suite(void)
{
	Suite *s = suite_create("Dbmail User Resolution and DSN Functions\n");

	TCase *tc_dsn = tcase_create("DSN");
	suite_add_tcase(s, tc_dsn);
	tcase_add_checked_fixture(tc_dsn, setup, teardown);
	tcase_add_test(tc_dsn, test_resolve_useridnr_exists);
	tcase_add_test(tc_dsn, test_resolve_useridnr_dne);
	tcase_add_test(tc_dsn, test_resolve_address_dne);
	tcase_add_test(tc_dsn, test_resolve_alias);
	tcase_add_test(tc_dsn, test_resolve_alias_mailbox);
	tcase_add_test(tc_dsn, test_resolve_username);
	tcase_add_test(tc_dsn, test_resolve_username_mailbox);
	tcase_add_test(tc_dsn, test_resolve_domain_catchall);
	tcase_add_test(tc_dsn, test_resolve_userpart_catchall);
	return s;
}

int main(void)
{
	int nf;
	Suite *s = dbmail_dsn_suite();
	SRunner *sr = srunner_create(s);
	srunner_run_all(sr, CK_NORMAL);
	nf = srunner_ntests_failed(sr);
	srunner_free(sr);
	return (nf == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}

