PGDMP         
                {            zitadel    15.5 (Debian 15.5-1.pgdg120+1)    15.5 �              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16385    zitadel    DATABASE     r   CREATE DATABASE zitadel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE zitadel;
                postgres    false                       0    0    DATABASE zitadel    ACL     *   GRANT ALL ON DATABASE zitadel TO zitadel;
                   postgres    false    4363            	            2615    16414    adminapi    SCHEMA        CREATE SCHEMA adminapi;
    DROP SCHEMA adminapi;
                zitadel    false            
            2615    16444    auth    SCHEMA        CREATE SCHEMA auth;
    DROP SCHEMA auth;
                zitadel    false                        2615    16395 
   eventstore    SCHEMA        CREATE SCHEMA eventstore;
    DROP SCHEMA eventstore;
                zitadel    false                        2615    16624    logstore    SCHEMA        CREATE SCHEMA logstore;
    DROP SCHEMA logstore;
                zitadel    false                        2615    16394    projections    SCHEMA        CREATE SCHEMA projections;
    DROP SCHEMA projections;
                zitadel    false                        2615    16386    system    SCHEMA        CREATE SCHEMA system;
    DROP SCHEMA system;
                zitadel    false            �            1259    16422    current_sequences    TABLE     �   CREATE TABLE adminapi.current_sequences (
    view_name text NOT NULL,
    current_sequence bigint,
    event_date timestamp with time zone,
    last_successful_spooler_run timestamp with time zone,
    instance_id text NOT NULL
);
 '   DROP TABLE adminapi.current_sequences;
       adminapi         heap    zitadel    false    9            �            1259    16429    failed_events    TABLE     �   CREATE TABLE adminapi.failed_events (
    view_name text NOT NULL,
    failed_sequence bigint NOT NULL,
    failure_count smallint,
    err_msg text,
    instance_id text NOT NULL,
    last_failed timestamp with time zone
);
 #   DROP TABLE adminapi.failed_events;
       adminapi         heap    zitadel    false    9            �            1259    16415    locks    TABLE     �   CREATE TABLE adminapi.locks (
    locker_id text,
    locked_until timestamp(3) with time zone,
    view_name text NOT NULL,
    instance_id text NOT NULL
);
    DROP TABLE adminapi.locks;
       adminapi         heap    zitadel    false    9            �            1259    16436    styling    TABLE     �  CREATE TABLE adminapi.styling (
    aggregate_id text NOT NULL,
    creation_date timestamp with time zone,
    change_date timestamp with time zone,
    label_policy_state smallint DEFAULT (0)::smallint NOT NULL,
    sequence bigint,
    primary_color text,
    background_color text,
    warn_color text,
    font_color text,
    primary_color_dark text,
    background_color_dark text,
    warn_color_dark text,
    font_color_dark text,
    logo_url text,
    icon_url text,
    logo_dark_url text,
    icon_dark_url text,
    font_url text,
    err_msg_popup boolean,
    disable_watermark boolean,
    hide_login_name_suffix boolean,
    instance_id text NOT NULL
);
    DROP TABLE adminapi.styling;
       adminapi         heap    zitadel    false    9            �            1259    16569    styling2    TABLE     �  CREATE TABLE adminapi.styling2 (
    aggregate_id text NOT NULL,
    creation_date timestamp with time zone,
    change_date timestamp with time zone,
    label_policy_state smallint DEFAULT (0)::smallint NOT NULL,
    sequence bigint,
    primary_color text,
    background_color text,
    warn_color text,
    font_color text,
    primary_color_dark text,
    background_color_dark text,
    warn_color_dark text,
    font_color_dark text,
    logo_url text,
    icon_url text,
    logo_dark_url text,
    icon_dark_url text,
    font_url text,
    err_msg_popup boolean,
    disable_watermark boolean,
    hide_login_name_suffix boolean,
    instance_id text NOT NULL,
    owner_removed boolean DEFAULT false
);
    DROP TABLE adminapi.styling2;
       adminapi         heap    zitadel    false    9            �            1259    16525    auth_requests    TABLE     �   CREATE TABLE auth.auth_requests (
    id text NOT NULL,
    request jsonb,
    code text,
    request_type smallint,
    creation_date timestamp with time zone,
    change_date timestamp with time zone,
    instance_id text NOT NULL
);
    DROP TABLE auth.auth_requests;
       auth         heap    zitadel    false    10            �            1259    16452    current_sequences    TABLE     �   CREATE TABLE auth.current_sequences (
    view_name text NOT NULL,
    current_sequence bigint,
    event_date timestamp with time zone,
    last_successful_spooler_run timestamp with time zone,
    instance_id text NOT NULL
);
 #   DROP TABLE auth.current_sequences;
       auth         heap    zitadel    false    10            �            1259    16459    failed_events    TABLE     �   CREATE TABLE auth.failed_events (
    view_name text NOT NULL,
    failed_sequence bigint NOT NULL,
    failure_count smallint,
    err_msg text,
    instance_id text NOT NULL,
    last_failed timestamp with time zone
);
    DROP TABLE auth.failed_events;
       auth         heap    zitadel    false    10            �            1259    16518    idp_configs    TABLE     �  CREATE TABLE auth.idp_configs (
    idp_config_id text NOT NULL,
    creation_date timestamp with time zone,
    change_date timestamp with time zone,
    sequence bigint,
    aggregate_id text,
    name text,
    idp_state smallint,
    idp_provider_type smallint,
    is_oidc boolean,
    oidc_client_id text,
    oidc_client_secret jsonb,
    oidc_issuer text,
    oidc_scopes text[],
    oidc_idp_display_name_mapping smallint,
    oidc_idp_username_mapping smallint,
    styling_type smallint,
    oauth_authorization_endpoint text,
    oauth_token_endpoint text,
    auto_register boolean,
    jwt_endpoint text,
    jwt_keys_endpoint text,
    jwt_header_name text,
    instance_id text NOT NULL
);
    DROP TABLE auth.idp_configs;
       auth         heap    zitadel    false    10            �            1259    16615    idp_configs2    TABLE     �  CREATE TABLE auth.idp_configs2 (
    idp_config_id text NOT NULL,
    creation_date timestamp with time zone,
    change_date timestamp with time zone,
    sequence bigint,
    aggregate_id text,
    name text,
    idp_state smallint,
    idp_provider_type smallint,
    is_oidc boolean,
    oidc_client_id text,
    oidc_client_secret jsonb,
    oidc_issuer text,
    oidc_scopes text[],
    oidc_idp_display_name_mapping smallint,
    oidc_idp_username_mapping smallint,
    styling_type smallint,
    oauth_authorization_endpoint text,
    oauth_token_endpoint text,
    auto_register boolean,
    jwt_endpoint text,
    jwt_keys_endpoint text,
    jwt_header_name text,
    instance_id text NOT NULL,
    owner_removed boolean DEFAULT false
);
    DROP TABLE auth.idp_configs2;
       auth         heap    zitadel    false    10            �            1259    16511    idp_providers    TABLE     o  CREATE TABLE auth.idp_providers (
    aggregate_id text NOT NULL,
    idp_config_id text NOT NULL,
    creation_date timestamp with time zone,
    change_date timestamp with time zone,
    sequence bigint,
    name text,
    idp_config_type smallint,
    idp_provider_type smallint,
    idp_state smallint,
    styling_type smallint,
    instance_id text NOT NULL
);
    DROP TABLE auth.idp_providers;
       auth         heap    zitadel    false    10            �            1259    16606    idp_providers2    TABLE     �  CREATE TABLE auth.idp_providers2 (
    aggregate_id text NOT NULL,
    idp_config_id text NOT NULL,
    creation_date timestamp with time zone,
    change_date timestamp with time zone,
    sequence bigint,
    name text,
    idp_config_type smallint,
    idp_provider_type smallint,
    idp_state smallint,
    styling_type smallint,
    instance_id text NOT NULL,
    owner_removed boolean DEFAULT false
);
     DROP TABLE auth.idp_providers2;
       auth         heap    zitadel    false    10            �            1259    16445    locks    TABLE     �   CREATE TABLE auth.locks (
    locker_id text,
    locked_until timestamp(3) with time zone,
    view_name text NOT NULL,
    instance_id text NOT NULL
);
    DROP TABLE auth.locks;
       auth         heap    zitadel    false    10            �            1259    16504    org_project_mapping    TABLE     �   CREATE TABLE auth.org_project_mapping (
    org_id text NOT NULL,
    project_id text NOT NULL,
    project_grant_id text,
    instance_id text NOT NULL
);
 %   DROP TABLE auth.org_project_mapping;
       auth         heap    zitadel    false    10            �            1259    16597    org_project_mapping2    TABLE     �   CREATE TABLE auth.org_project_mapping2 (
    org_id text NOT NULL,
    project_id text NOT NULL,
    project_grant_id text,
    instance_id text NOT NULL,
    owner_removed boolean DEFAULT false
);
 &   DROP TABLE auth.org_project_mapping2;
       auth         heap    zitadel    false    10            �            1259    16496    refresh_tokens    TABLE     �  CREATE TABLE auth.refresh_tokens (
    id text NOT NULL,
    creation_date timestamp with time zone,
    change_date timestamp with time zone,
    resource_owner text,
    token text,
    client_id text NOT NULL,
    user_agent_id text NOT NULL,
    user_id text NOT NULL,
    auth_time timestamp with time zone,
    idle_expiration timestamp with time zone,
    expiration timestamp with time zone,
    sequence bigint,
    scopes text[],
    audience text[],
    amr text[],
    instance_id text NOT NULL
);
     DROP TABLE auth.refresh_tokens;
       auth         heap    zitadel    false    10            �            1259    16487    tokens    TABLE     �  CREATE TABLE auth.tokens (
    id text NOT NULL,
    creation_date timestamp with time zone,
    change_date timestamp with time zone,
    resource_owner text,
    application_id text,
    user_agent_id text,
    user_id text,
    expiration timestamp with time zone,
    sequence bigint,
    scopes text[],
    audience text[],
    preferred_language text,
    refresh_token_id text,
    is_pat boolean DEFAULT false NOT NULL,
    instance_id text NOT NULL
);
    DROP TABLE auth.tokens;
       auth         heap    zitadel    false    10            �            1259    16480    user_external_idps    TABLE     R  CREATE TABLE auth.user_external_idps (
    external_user_id text NOT NULL,
    idp_config_id text NOT NULL,
    user_id text,
    idp_name text,
    user_display_name text,
    creation_date timestamp with time zone,
    change_date timestamp with time zone,
    sequence bigint,
    resource_owner text,
    instance_id text NOT NULL
);
 $   DROP TABLE auth.user_external_idps;
       auth         heap    zitadel    false    10            �            1259    16588    user_external_idps2    TABLE     |  CREATE TABLE auth.user_external_idps2 (
    external_user_id text NOT NULL,
    idp_config_id text NOT NULL,
    user_id text,
    idp_name text,
    user_display_name text,
    creation_date timestamp with time zone,
    change_date timestamp with time zone,
    sequence bigint,
    resource_owner text,
    instance_id text NOT NULL,
    owner_removed boolean DEFAULT false
);
 %   DROP TABLE auth.user_external_idps2;
       auth         heap    zitadel    false    10            �            1259    16473    user_sessions    TABLE       CREATE TABLE auth.user_sessions (
    creation_date timestamp with time zone,
    change_date timestamp with time zone,
    resource_owner text,
    state smallint,
    user_agent_id text NOT NULL,
    user_id text NOT NULL,
    user_name text,
    password_verification timestamp with time zone,
    second_factor_verification timestamp with time zone,
    multi_factor_verification timestamp with time zone,
    sequence bigint,
    second_factor_verification_type smallint,
    multi_factor_verification_type smallint,
    user_display_name text,
    login_name text,
    external_login_verification timestamp with time zone,
    selected_idp_config_id text,
    passwordless_verification timestamp with time zone,
    avatar_key text,
    instance_id text NOT NULL
);
    DROP TABLE auth.user_sessions;
       auth         heap    zitadel    false    10            �            1259    16466    users    TABLE     �  CREATE TABLE auth.users (
    id text NOT NULL,
    creation_date timestamp with time zone,
    change_date timestamp with time zone,
    resource_owner text,
    user_state smallint,
    password_set boolean,
    password_change_required boolean,
    password_change timestamp with time zone,
    last_login timestamp with time zone,
    user_name text,
    login_names text[],
    preferred_login_name text,
    first_name text,
    last_name text,
    nick_name text,
    display_name text,
    preferred_language text,
    gender smallint,
    email text,
    is_email_verified boolean,
    phone text,
    is_phone_verified boolean,
    country text,
    locality text,
    postal_code text,
    region text,
    street_address text,
    otp_state smallint,
    mfa_max_set_up smallint,
    mfa_init_skipped timestamp with time zone,
    sequence bigint,
    init_required boolean,
    username_change_required boolean,
    machine_name text,
    machine_description text,
    user_type text,
    u2f_tokens bytea,
    passwordless_tokens bytea,
    avatar_key text,
    passwordless_init_required boolean,
    password_init_required boolean,
    instance_id text NOT NULL
);
    DROP TABLE auth.users;
       auth         heap    zitadel    false    10            �            1259    16579    users2    TABLE       CREATE TABLE auth.users2 (
    id text NOT NULL,
    creation_date timestamp with time zone,
    change_date timestamp with time zone,
    resource_owner text,
    user_state smallint,
    password_set boolean,
    password_change_required boolean,
    password_change timestamp with time zone,
    last_login timestamp with time zone,
    user_name text,
    login_names text[],
    preferred_login_name text,
    first_name text,
    last_name text,
    nick_name text,
    display_name text,
    preferred_language text,
    gender smallint,
    email text,
    is_email_verified boolean,
    phone text,
    is_phone_verified boolean,
    country text,
    locality text,
    postal_code text,
    region text,
    street_address text,
    otp_state smallint,
    mfa_max_set_up smallint,
    mfa_init_skipped timestamp with time zone,
    sequence bigint,
    init_required boolean,
    username_change_required boolean,
    machine_name text,
    machine_description text,
    user_type text,
    u2f_tokens bytea,
    passwordless_tokens bytea,
    avatar_key text,
    passwordless_init_required boolean,
    password_init_required boolean,
    instance_id text NOT NULL,
    owner_removed boolean DEFAULT false,
    otp_sms_added boolean DEFAULT false,
    otp_email_added boolean DEFAULT false
);
    DROP TABLE auth.users2;
       auth         heap    zitadel    false    10            �            1259    16396    events2    TABLE     �  CREATE TABLE eventstore.events2 (
    instance_id text NOT NULL,
    aggregate_type text NOT NULL,
    aggregate_id text NOT NULL,
    event_type text NOT NULL,
    sequence bigint NOT NULL,
    revision smallint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    payload jsonb,
    creator text NOT NULL,
    owner text NOT NULL,
    "position" numeric NOT NULL,
    in_tx_order integer NOT NULL
);
    DROP TABLE eventstore.events2;
    
   eventstore         heap    zitadel    false    8            �            1259    16406 
   system_seq    SEQUENCE     w   CREATE SEQUENCE eventstore.system_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE eventstore.system_seq;
    
   eventstore          zitadel    false    8            �            1259    16407    unique_constraints    TABLE     �   CREATE TABLE eventstore.unique_constraints (
    instance_id text NOT NULL,
    unique_type text NOT NULL,
    unique_field text NOT NULL
);
 *   DROP TABLE eventstore.unique_constraints;
    
   eventstore         heap    zitadel    false    8            �            1259    16625    access    TABLE     ]  CREATE TABLE logstore.access (
    log_date timestamp with time zone NOT NULL,
    protocol integer NOT NULL,
    request_url text NOT NULL,
    response_status integer NOT NULL,
    request_headers jsonb,
    response_headers jsonb,
    instance_id text NOT NULL,
    project_id text NOT NULL,
    requested_domain text,
    requested_host text
);
    DROP TABLE logstore.access;
       logstore         heap    zitadel    false    11            �            1259    16631 	   execution    TABLE     �   CREATE TABLE logstore.execution (
    log_date timestamp with time zone NOT NULL,
    took interval,
    message text NOT NULL,
    loglevel integer NOT NULL,
    instance_id text NOT NULL,
    action_id text NOT NULL,
    metadata jsonb
);
    DROP TABLE logstore.execution;
       logstore         heap    zitadel    false    11                        1259    16679    actions3    TABLE     �  CREATE TABLE projections.actions3 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    action_state smallint NOT NULL,
    sequence bigint NOT NULL,
    name text NOT NULL,
    script text DEFAULT ''::text NOT NULL,
    timeout bigint DEFAULT 0 NOT NULL,
    allowed_to_fail boolean DEFAULT false NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 !   DROP TABLE projections.actions3;
       projections         heap    zitadel    false    7                       1259    17012    apps5    TABLE     �  CREATE TABLE projections.apps5 (
    id text NOT NULL,
    name text NOT NULL,
    project_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    state smallint NOT NULL,
    sequence bigint NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
    DROP TABLE projections.apps5;
       projections         heap    zitadel    false    7                       1259    17022    apps5_api_configs    TABLE     �   CREATE TABLE projections.apps5_api_configs (
    app_id text NOT NULL,
    instance_id text NOT NULL,
    client_id text NOT NULL,
    client_secret jsonb,
    auth_method smallint NOT NULL
);
 *   DROP TABLE projections.apps5_api_configs;
       projections         heap    zitadel    false    7                       1259    17035    apps5_oidc_configs    TABLE       CREATE TABLE projections.apps5_oidc_configs (
    app_id text NOT NULL,
    instance_id text NOT NULL,
    version smallint NOT NULL,
    client_id text NOT NULL,
    client_secret jsonb,
    redirect_uris text[],
    response_types smallint[],
    grant_types smallint[],
    application_type smallint NOT NULL,
    auth_method_type smallint NOT NULL,
    post_logout_redirect_uris text[],
    is_dev_mode boolean NOT NULL,
    access_token_type smallint NOT NULL,
    access_token_role_assertion boolean DEFAULT false NOT NULL,
    id_token_role_assertion boolean DEFAULT false NOT NULL,
    id_token_userinfo_assertion boolean DEFAULT false NOT NULL,
    clock_skew bigint DEFAULT 0 NOT NULL,
    additional_origins text[],
    skip_native_app_success_page boolean DEFAULT false NOT NULL
);
 +   DROP TABLE projections.apps5_oidc_configs;
       projections         heap    zitadel    false    7                        1259    17053    apps5_saml_configs    TABLE     �   CREATE TABLE projections.apps5_saml_configs (
    app_id text NOT NULL,
    instance_id text NOT NULL,
    entity_id text NOT NULL,
    metadata bytea NOT NULL,
    metadata_url text NOT NULL
);
 +   DROP TABLE projections.apps5_saml_configs;
       projections         heap    zitadel    false    7            G           1259    17463    auth_requests    TABLE     �  CREATE TABLE projections.auth_requests (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    login_client text NOT NULL,
    client_id text NOT NULL,
    redirect_uri text NOT NULL,
    scope text[] NOT NULL,
    prompt smallint[],
    ui_locales text[],
    max_age bigint,
    login_hint text,
    hint_user_id text
);
 &   DROP TABLE projections.auth_requests;
       projections         heap    zitadel    false    7            3           1259    17262    authn_keys2    TABLE     5  CREATE TABLE projections.authn_keys2 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    aggregate_id text NOT NULL,
    sequence bigint NOT NULL,
    object_id text NOT NULL,
    expiration timestamp with time zone NOT NULL,
    identifier text NOT NULL,
    public_key bytea NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    type smallint DEFAULT 0 NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 $   DROP TABLE projections.authn_keys2;
       projections         heap    zitadel    false    7            �            1259    16540    current_sequences    TABLE     �   CREATE TABLE projections.current_sequences (
    projection_name text NOT NULL,
    aggregate_type text NOT NULL,
    current_sequence bigint,
    instance_id text NOT NULL,
    "timestamp" timestamp with time zone
);
 *   DROP TABLE projections.current_sequences;
       projections         heap    zitadel    false    7            �            1259    16652    current_states    TABLE     :  CREATE TABLE projections.current_states (
    projection_name text NOT NULL,
    instance_id text NOT NULL,
    last_updated timestamp with time zone,
    aggregate_id text,
    aggregate_type text,
    sequence bigint,
    event_date timestamp with time zone,
    "position" numeric,
    filter_offset integer
);
 '   DROP TABLE projections.current_states;
       projections         heap    zitadel    false    7            %           1259    17105    custom_texts2    TABLE     �  CREATE TABLE projections.custom_texts2 (
    aggregate_id text NOT NULL,
    instance_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    is_default boolean NOT NULL,
    template text NOT NULL,
    language text NOT NULL,
    key text NOT NULL,
    text text NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 &   DROP TABLE projections.custom_texts2;
       projections         heap    zitadel    false    7            E           1259    17444    device_authorizations    TABLE     �  CREATE TABLE projections.device_authorizations (
    id text NOT NULL,
    client_id text NOT NULL,
    device_code text NOT NULL,
    user_code text NOT NULL,
    expires timestamp with time zone NOT NULL,
    scopes text[] NOT NULL,
    state smallint DEFAULT 1 NOT NULL,
    subject text DEFAULT ''::text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    instance_id text NOT NULL
);
 .   DROP TABLE projections.device_authorizations;
       projections         heap    zitadel    false    7                       1259    16751    domain_policies2    TABLE     &  CREATE TABLE projections.domain_policies2 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    user_login_must_be_domain boolean NOT NULL,
    validate_org_domains boolean NOT NULL,
    smtp_sender_address_matches_instance_domain boolean NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 )   DROP TABLE projections.domain_policies2;
       projections         heap    zitadel    false    7            �            1259    16547    failed_events    TABLE     �   CREATE TABLE projections.failed_events (
    projection_name text NOT NULL,
    failed_sequence bigint NOT NULL,
    failure_count smallint,
    error text,
    instance_id text NOT NULL,
    last_failed timestamp with time zone
);
 &   DROP TABLE projections.failed_events;
       projections         heap    zitadel    false    7            �            1259    16643    failed_events2    TABLE     p  CREATE TABLE projections.failed_events2 (
    projection_name text NOT NULL,
    instance_id text NOT NULL,
    aggregate_type text NOT NULL,
    aggregate_id text NOT NULL,
    event_creation_date timestamp with time zone NOT NULL,
    failed_sequence bigint NOT NULL,
    failure_count smallint DEFAULT 0,
    error text,
    last_failed timestamp with time zone
);
 '   DROP TABLE projections.failed_events2;
       projections         heap    zitadel    false    7                       1259    16692    flow_triggers2    TABLE     x  CREATE TABLE projections.flow_triggers2 (
    flow_type smallint NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    trigger_type smallint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    trigger_sequence bigint NOT NULL,
    action_id text NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 '   DROP TABLE projections.flow_triggers2;
       projections         heap    zitadel    false    7            "           1259    17076    idp_login_policy_links5    TABLE     �  CREATE TABLE projections.idp_login_policy_links5 (
    idp_id text NOT NULL,
    aggregate_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    provider_type smallint NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 0   DROP TABLE projections.idp_login_policy_links5;
       projections         heap    zitadel    false    7                       1259    16852    idp_templates5    TABLE     |  CREATE TABLE projections.idp_templates5 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    state smallint NOT NULL,
    name text,
    owner_type smallint NOT NULL,
    type smallint NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL,
    is_creation_allowed boolean DEFAULT false NOT NULL,
    is_linking_allowed boolean DEFAULT false NOT NULL,
    is_auto_creation boolean DEFAULT false NOT NULL,
    is_auto_update boolean DEFAULT false NOT NULL
);
 '   DROP TABLE projections.idp_templates5;
       projections         heap    zitadel    false    7                       1259    16988    idp_templates5_apple    TABLE     �   CREATE TABLE projections.idp_templates5_apple (
    idp_id text NOT NULL,
    instance_id text NOT NULL,
    client_id text NOT NULL,
    team_id text NOT NULL,
    key_id text NOT NULL,
    private_key jsonb NOT NULL,
    scopes text[]
);
 -   DROP TABLE projections.idp_templates5_apple;
       projections         heap    zitadel    false    7                       1259    16903    idp_templates5_azure    TABLE       CREATE TABLE projections.idp_templates5_azure (
    idp_id text NOT NULL,
    instance_id text NOT NULL,
    client_id text NOT NULL,
    client_secret jsonb NOT NULL,
    scopes text,
    tenant text,
    is_email_verified boolean DEFAULT false NOT NULL
);
 -   DROP TABLE projections.idp_templates5_azure;
       projections         heap    zitadel    false    7                       1259    16916    idp_templates5_github    TABLE     �   CREATE TABLE projections.idp_templates5_github (
    idp_id text NOT NULL,
    instance_id text NOT NULL,
    client_id text NOT NULL,
    client_secret jsonb NOT NULL,
    scopes text[]
);
 .   DROP TABLE projections.idp_templates5_github;
       projections         heap    zitadel    false    7                       1259    16928     idp_templates5_github_enterprise    TABLE     6  CREATE TABLE projections.idp_templates5_github_enterprise (
    idp_id text NOT NULL,
    instance_id text NOT NULL,
    client_id text NOT NULL,
    client_secret jsonb NOT NULL,
    authorization_endpoint text NOT NULL,
    token_endpoint text NOT NULL,
    user_endpoint text NOT NULL,
    scopes text[]
);
 9   DROP TABLE projections.idp_templates5_github_enterprise;
       projections         heap    zitadel    false    7                       1259    16940    idp_templates5_gitlab    TABLE     �   CREATE TABLE projections.idp_templates5_gitlab (
    idp_id text NOT NULL,
    instance_id text NOT NULL,
    client_id text NOT NULL,
    client_secret jsonb NOT NULL,
    scopes text[]
);
 .   DROP TABLE projections.idp_templates5_gitlab;
       projections         heap    zitadel    false    7                       1259    16952 !   idp_templates5_gitlab_self_hosted    TABLE     �   CREATE TABLE projections.idp_templates5_gitlab_self_hosted (
    idp_id text NOT NULL,
    instance_id text NOT NULL,
    issuer text NOT NULL,
    client_id text NOT NULL,
    client_secret jsonb NOT NULL,
    scopes text[]
);
 :   DROP TABLE projections.idp_templates5_gitlab_self_hosted;
       projections         heap    zitadel    false    7                       1259    16964    idp_templates5_google    TABLE     �   CREATE TABLE projections.idp_templates5_google (
    idp_id text NOT NULL,
    instance_id text NOT NULL,
    client_id text NOT NULL,
    client_secret jsonb NOT NULL,
    scopes text[]
);
 .   DROP TABLE projections.idp_templates5_google;
       projections         heap    zitadel    false    7                       1259    16891    idp_templates5_jwt    TABLE     �   CREATE TABLE projections.idp_templates5_jwt (
    idp_id text NOT NULL,
    instance_id text NOT NULL,
    issuer text NOT NULL,
    jwt_endpoint text NOT NULL,
    keys_endpoint text NOT NULL,
    header_name text
);
 +   DROP TABLE projections.idp_templates5_jwt;
       projections         heap    zitadel    false    7                       1259    16976    idp_templates5_ldap2    TABLE       CREATE TABLE projections.idp_templates5_ldap2 (
    idp_id text NOT NULL,
    instance_id text NOT NULL,
    servers text[] NOT NULL,
    start_tls boolean NOT NULL,
    base_dn text NOT NULL,
    bind_dn text NOT NULL,
    bind_password jsonb NOT NULL,
    user_base text NOT NULL,
    user_object_classes text[] NOT NULL,
    user_filters text[] NOT NULL,
    timeout bigint NOT NULL,
    id_attribute text,
    first_name_attribute text,
    last_name_attribute text,
    display_name_attribute text,
    nick_name_attribute text,
    preferred_username_attribute text,
    email_attribute text,
    email_verified text,
    phone_attribute text,
    phone_verified_attribute text,
    preferred_language_attribute text,
    avatar_url_attribute text,
    profile_attribute text
);
 -   DROP TABLE projections.idp_templates5_ldap2;
       projections         heap    zitadel    false    7                       1259    16866    idp_templates5_oauth2    TABLE     K  CREATE TABLE projections.idp_templates5_oauth2 (
    idp_id text NOT NULL,
    instance_id text NOT NULL,
    client_id text NOT NULL,
    client_secret jsonb NOT NULL,
    authorization_endpoint text NOT NULL,
    token_endpoint text NOT NULL,
    user_endpoint text NOT NULL,
    scopes text[],
    id_attribute text NOT NULL
);
 .   DROP TABLE projections.idp_templates5_oauth2;
       projections         heap    zitadel    false    7                       1259    16878    idp_templates5_oidc    TABLE       CREATE TABLE projections.idp_templates5_oidc (
    idp_id text NOT NULL,
    instance_id text NOT NULL,
    issuer text NOT NULL,
    client_id text NOT NULL,
    client_secret jsonb NOT NULL,
    scopes text[],
    id_token_mapping boolean DEFAULT false NOT NULL
);
 ,   DROP TABLE projections.idp_templates5_oidc;
       projections         heap    zitadel    false    7                       1259    17000    idp_templates5_saml    TABLE     �   CREATE TABLE projections.idp_templates5_saml (
    idp_id text NOT NULL,
    instance_id text NOT NULL,
    metadata bytea NOT NULL,
    key jsonb NOT NULL,
    certificate bytea NOT NULL,
    binding text,
    with_signed_request boolean
);
 ,   DROP TABLE projections.idp_templates5_saml;
       projections         heap    zitadel    false    7            !           1259    17066    idp_user_links3    TABLE     �  CREATE TABLE projections.idp_user_links3 (
    idp_id text NOT NULL,
    user_id text NOT NULL,
    external_user_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    display_name text NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 (   DROP TABLE projections.idp_user_links3;
       projections         heap    zitadel    false    7                       1259    16817    idps3    TABLE     �  CREATE TABLE projections.idps3 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    state smallint NOT NULL,
    name text NOT NULL,
    styling_type smallint NOT NULL,
    owner_type smallint NOT NULL,
    auto_register boolean DEFAULT false NOT NULL,
    type smallint,
    owner_removed boolean DEFAULT false NOT NULL
);
    DROP TABLE projections.idps3;
       projections         heap    zitadel    false    7                       1259    16840    idps3_jwt_config    TABLE     �   CREATE TABLE projections.idps3_jwt_config (
    idp_id text NOT NULL,
    instance_id text NOT NULL,
    issuer text,
    keys_endpoint text,
    header_name text,
    endpoint text
);
 )   DROP TABLE projections.idps3_jwt_config;
       projections         heap    zitadel    false    7                       1259    16828    idps3_oidc_config    TABLE     5  CREATE TABLE projections.idps3_oidc_config (
    idp_id text NOT NULL,
    instance_id text NOT NULL,
    client_id text,
    client_secret jsonb,
    issuer text,
    scopes text[],
    display_name_mapping smallint,
    username_mapping smallint,
    authorization_endpoint text,
    token_endpoint text
);
 *   DROP TABLE projections.idps3_oidc_config;
       projections         heap    zitadel    false    7            /           1259    17214    instance_domains    TABLE     1  CREATE TABLE projections.instance_domains (
    instance_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    domain text NOT NULL,
    is_generated boolean NOT NULL,
    is_primary boolean NOT NULL
);
 )   DROP TABLE projections.instance_domains;
       projections         heap    zitadel    false    7            0           1259    17222    instance_members3    TABLE     �  CREATE TABLE projections.instance_members3 (
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    user_id text NOT NULL,
    user_resource_owner text NOT NULL,
    user_owner_removed boolean DEFAULT false NOT NULL,
    roles text[],
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL,
    id text NOT NULL
);
 *   DROP TABLE projections.instance_members3;
       projections         heap    zitadel    false    7            8           1259    17323 	   instances    TABLE     �  CREATE TABLE projections.instances (
    id text NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    change_date timestamp with time zone NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    default_org_id text DEFAULT ''::text NOT NULL,
    iam_project_id text DEFAULT ''::text NOT NULL,
    console_client_id text DEFAULT ''::text NOT NULL,
    console_app_id text DEFAULT ''::text NOT NULL,
    sequence bigint NOT NULL,
    default_language text DEFAULT ''::text NOT NULL
);
 "   DROP TABLE projections.instances;
       projections         heap    zitadel    false    7            ?           1259    17383    keys4    TABLE     S  CREATE TABLE projections.keys4 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    sequence bigint NOT NULL,
    algorithm text DEFAULT ''::text NOT NULL,
    use smallint DEFAULT 0 NOT NULL
);
    DROP TABLE projections.keys4;
       projections         heap    zitadel    false    7            B           1259    17416    keys4_certificate    TABLE     �   CREATE TABLE projections.keys4_certificate (
    id text NOT NULL,
    instance_id text NOT NULL,
    expiry timestamp with time zone NOT NULL,
    certificate bytea NOT NULL
);
 *   DROP TABLE projections.keys4_certificate;
       projections         heap    zitadel    false    7            @           1259    17392    keys4_private    TABLE     �   CREATE TABLE projections.keys4_private (
    id text NOT NULL,
    instance_id text NOT NULL,
    expiry timestamp with time zone NOT NULL,
    key jsonb NOT NULL
);
 &   DROP TABLE projections.keys4_private;
       projections         heap    zitadel    false    7            A           1259    17404    keys4_public    TABLE     �   CREATE TABLE projections.keys4_public (
    id text NOT NULL,
    instance_id text NOT NULL,
    expiry timestamp with time zone NOT NULL,
    key bytea NOT NULL
);
 %   DROP TABLE projections.keys4_public;
       projections         heap    zitadel    false    7                       1259    16761    label_policies3    TABLE     �  CREATE TABLE projections.label_policies3 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    hide_login_name_suffix boolean DEFAULT false NOT NULL,
    watermark_disabled boolean DEFAULT false NOT NULL,
    should_error_popup boolean DEFAULT false NOT NULL,
    font_url text,
    light_primary_color text,
    light_warn_color text,
    light_background_color text,
    light_font_color text,
    light_logo_url text,
    light_icon_url text,
    dark_primary_color text,
    dark_warn_color text,
    dark_background_color text,
    dark_font_color text,
    dark_logo_url text,
    dark_icon_url text,
    owner_removed boolean DEFAULT false NOT NULL,
    theme_mode smallint DEFAULT 0 NOT NULL
);
 (   DROP TABLE projections.label_policies3;
       projections         heap    zitadel    false    7            L           1259    17498    limits    TABLE     -  CREATE TABLE projections.limits (
    aggregate_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    sequence bigint NOT NULL,
    audit_log_retention interval
);
    DROP TABLE projections.limits;
       projections         heap    zitadel    false    7                       1259    16731    lockout_policies2    TABLE     �  CREATE TABLE projections.lockout_policies2 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    max_password_attempts bigint NOT NULL,
    show_failure boolean NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 *   DROP TABLE projections.lockout_policies2;
       projections         heap    zitadel    false    7            �            1259    16533    locks    TABLE     �   CREATE TABLE projections.locks (
    locker_id text,
    locked_until timestamp(3) with time zone,
    projection_name text NOT NULL,
    instance_id text NOT NULL
);
    DROP TABLE projections.locks;
       projections         heap    zitadel    false    7            +           1259    17176    login_names2_domains    TABLE     �   CREATE TABLE projections.login_names2_domains (
    name text NOT NULL,
    is_primary boolean DEFAULT false NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 -   DROP TABLE projections.login_names2_domains;
       projections         heap    zitadel    false    7            ,           1259    17186    login_names2_policies    TABLE     �   CREATE TABLE projections.login_names2_policies (
    must_be_domain boolean NOT NULL,
    is_default boolean NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 .   DROP TABLE projections.login_names2_policies;
       projections         heap    zitadel    false    7            *           1259    17165    login_names2_users    TABLE     �   CREATE TABLE projections.login_names2_users (
    id text NOT NULL,
    user_name text NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 +   DROP TABLE projections.login_names2_users;
       projections         heap    zitadel    false    7            -           1259    17196    login_names2    VIEW     �  CREATE VIEW projections.login_names2 AS
 SELECT login_names2.user_id,
        CASE
            WHEN login_names2.must_be_domain THEN concat(login_names2.user_name, '@', login_names2.domain)
            ELSE login_names2.user_name
        END AS login_name,
    COALESCE(login_names2.is_primary, true) AS is_primary,
    login_names2.instance_id,
    login_names2.user_owner_removed,
    login_names2.policy_owner_removed,
    login_names2.domain_owner_removed
   FROM ( SELECT policy_users.user_id,
            policy_users.user_name,
            policy_users.resource_owner,
            policy_users.instance_id,
            policy_users.must_be_domain,
            domains.name AS domain,
            domains.is_primary,
            policy_users.user_owner_removed,
            policy_users.policy_owner_removed,
            COALESCE(domains.owner_removed, false) AS domain_owner_removed
           FROM (( SELECT users.id AS user_id,
                    users.user_name,
                    users.instance_id,
                    users.resource_owner,
                    COALESCE(policy_custom.must_be_domain, policy_default.must_be_domain) AS must_be_domain,
                    users.owner_removed AS user_owner_removed,
                    COALESCE(policy_custom.owner_removed, false) AS policy_owner_removed
                   FROM ((projections.login_names2_users users
                     LEFT JOIN projections.login_names2_policies policy_custom ON (((policy_custom.resource_owner = users.resource_owner) AND (policy_custom.instance_id = users.instance_id))))
                     LEFT JOIN projections.login_names2_policies policy_default ON (((policy_default.is_default = true) AND (policy_default.instance_id = users.instance_id))))) policy_users
             LEFT JOIN projections.login_names2_domains domains ON ((policy_users.must_be_domain AND (policy_users.resource_owner = domains.resource_owner) AND (policy_users.instance_id = domains.instance_id))))) login_names2;
 $   DROP VIEW projections.login_names2;
       projections          zitadel    false    300    300    300    298    300    300    299    299    299    299    299    298    298    298    298    7                       1259    16806    login_policies5    TABLE     �  CREATE TABLE projections.login_policies5 (
    aggregate_id text NOT NULL,
    instance_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    allow_register boolean NOT NULL,
    allow_username_password boolean NOT NULL,
    allow_external_idps boolean NOT NULL,
    force_mfa boolean NOT NULL,
    force_mfa_local_only boolean DEFAULT false NOT NULL,
    second_factors smallint[],
    multi_factors smallint[],
    passwordless_type smallint NOT NULL,
    hide_password_reset boolean NOT NULL,
    ignore_unknown_usernames boolean NOT NULL,
    allow_domain_discovery boolean NOT NULL,
    disable_login_with_email boolean NOT NULL,
    disable_login_with_phone boolean NOT NULL,
    default_redirect_uri text,
    password_check_lifetime bigint NOT NULL,
    external_login_check_lifetime bigint NOT NULL,
    mfa_init_skip_lifetime bigint NOT NULL,
    second_factor_check_lifetime bigint NOT NULL,
    multi_factor_check_lifetime bigint NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 (   DROP TABLE projections.login_policies5;
       projections         heap    zitadel    false    7            #           1259    17086    mail_templates2    TABLE     �  CREATE TABLE projections.mail_templates2 (
    aggregate_id text NOT NULL,
    instance_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    template bytea NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 (   DROP TABLE projections.mail_templates2;
       projections         heap    zitadel    false    7            $           1259    17096    message_texts2    TABLE     �  CREATE TABLE projections.message_texts2 (
    aggregate_id text NOT NULL,
    instance_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    type text NOT NULL,
    language text NOT NULL,
    title text,
    pre_header text,
    subject text,
    greeting text,
    text text,
    button_text text,
    footer_text text,
    owner_removed boolean DEFAULT false NOT NULL
);
 '   DROP TABLE projections.message_texts2;
       projections         heap    zitadel    false    7            H           1259    17470 
   milestones    TABLE     �   CREATE TABLE projections.milestones (
    instance_id text NOT NULL,
    type smallint NOT NULL,
    reached_date timestamp with time zone,
    last_pushed_date timestamp with time zone,
    primary_domain text,
    ignore_client_ids text[]
);
 #   DROP TABLE projections.milestones;
       projections         heap    zitadel    false    7            D           1259    17436    notification_policies    TABLE     �  CREATE TABLE projections.notification_policies (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    is_default boolean NOT NULL,
    password_change boolean NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 .   DROP TABLE projections.notification_policies;
       projections         heap    zitadel    false    7            >           1259    17376    notification_providers    TABLE     {  CREATE TABLE projections.notification_providers (
    aggregate_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    state smallint NOT NULL,
    provider_type smallint NOT NULL,
    compact boolean NOT NULL
);
 /   DROP TABLE projections.notification_providers;
       projections         heap    zitadel    false    7            =           1259    17369    oidc_settings2    TABLE     �  CREATE TABLE projections.oidc_settings2 (
    aggregate_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    sequence bigint NOT NULL,
    access_token_lifetime bigint NOT NULL,
    id_token_lifetime bigint NOT NULL,
    refresh_token_idle_expiration bigint NOT NULL,
    refresh_token_expiration bigint NOT NULL
);
 '   DROP TABLE projections.oidc_settings2;
       projections         heap    zitadel    false    7                       1259    16797    org_domains2    TABLE     �  CREATE TABLE projections.org_domains2 (
    org_id text NOT NULL,
    instance_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    domain text NOT NULL,
    is_verified boolean NOT NULL,
    is_primary boolean NOT NULL,
    validation_type smallint NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 %   DROP TABLE projections.org_domains2;
       projections         heap    zitadel    false    7            .           1259    17201    org_members3    TABLE     �  CREATE TABLE projections.org_members3 (
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    user_id text NOT NULL,
    user_resource_owner text NOT NULL,
    user_owner_removed boolean DEFAULT false NOT NULL,
    roles text[],
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL,
    org_id text NOT NULL
);
 %   DROP TABLE projections.org_members3;
       projections         heap    zitadel    false    7            �            1259    16670    org_metadata2    TABLE     f  CREATE TABLE projections.org_metadata2 (
    org_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    key text NOT NULL,
    value bytea,
    owner_removed boolean DEFAULT false NOT NULL
);
 &   DROP TABLE projections.org_metadata2;
       projections         heap    zitadel    false    7            �            1259    16660    orgs1    TABLE     l  CREATE TABLE projections.orgs1 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    org_state smallint NOT NULL,
    sequence bigint NOT NULL,
    name text NOT NULL,
    primary_domain text DEFAULT ''::text NOT NULL
);
    DROP TABLE projections.orgs1;
       projections         heap    zitadel    false    7                       1259    16721    password_age_policies2    TABLE     �  CREATE TABLE projections.password_age_policies2 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    expire_warn_days bigint NOT NULL,
    max_age_days bigint NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 /   DROP TABLE projections.password_age_policies2;
       projections         heap    zitadel    false    7                       1259    16711    password_complexity_policies2    TABLE     @  CREATE TABLE projections.password_complexity_policies2 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    min_length bigint NOT NULL,
    has_lowercase boolean NOT NULL,
    has_uppercase boolean NOT NULL,
    has_symbol boolean NOT NULL,
    has_number boolean NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 6   DROP TABLE projections.password_complexity_policies2;
       projections         heap    zitadel    false    7            4           1259    17275    personal_access_tokens3    TABLE     �  CREATE TABLE projections.personal_access_tokens3 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    user_id text NOT NULL,
    expiration timestamp with time zone NOT NULL,
    scopes text[],
    owner_removed boolean DEFAULT false NOT NULL
);
 0   DROP TABLE projections.personal_access_tokens3;
       projections         heap    zitadel    false    7                       1259    16741    privacy_policies3    TABLE       CREATE TABLE projections.privacy_policies3 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    privacy_link text NOT NULL,
    tos_link text NOT NULL,
    help_link text NOT NULL,
    support_email text NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 *   DROP TABLE projections.privacy_policies3;
       projections         heap    zitadel    false    7            2           1259    17247    project_grant_members3    TABLE     I  CREATE TABLE projections.project_grant_members3 (
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    user_id text NOT NULL,
    user_resource_owner text NOT NULL,
    user_owner_removed boolean DEFAULT false NOT NULL,
    roles text[],
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL,
    project_id text NOT NULL,
    grant_id text NOT NULL,
    granted_org text NOT NULL,
    granted_org_removed boolean DEFAULT false NOT NULL
);
 /   DROP TABLE projections.project_grant_members3;
       projections         heap    zitadel    false    7            	           1259    16775    project_grants3    TABLE     �  CREATE TABLE projections.project_grants3 (
    grant_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    project_id text NOT NULL,
    granted_org_id text NOT NULL,
    granted_role_keys text[],
    owner_removed boolean DEFAULT false NOT NULL,
    granted_org_removed boolean DEFAULT false NOT NULL
);
 (   DROP TABLE projections.project_grants3;
       projections         heap    zitadel    false    7            1           1259    17234    project_members3    TABLE     �  CREATE TABLE projections.project_members3 (
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    user_id text NOT NULL,
    user_resource_owner text NOT NULL,
    user_owner_removed boolean DEFAULT false NOT NULL,
    roles text[],
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL,
    project_id text NOT NULL
);
 )   DROP TABLE projections.project_members3;
       projections         heap    zitadel    false    7            
           1259    16788    project_roles3    TABLE     �  CREATE TABLE projections.project_roles3 (
    project_id text NOT NULL,
    role_key text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    display_name text NOT NULL,
    group_name text NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 '   DROP TABLE projections.project_roles3;
       projections         heap    zitadel    false    7                       1259    16701 	   projects3    TABLE       CREATE TABLE projections.projects3 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    name text NOT NULL,
    project_role_assertion boolean NOT NULL,
    project_role_check boolean NOT NULL,
    has_project_check boolean NOT NULL,
    private_labeling_setting smallint NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 "   DROP TABLE projections.projects3;
       projections         heap    zitadel    false    7            I           1259    17477    quotas    TABLE     �   CREATE TABLE projections.quotas (
    id text NOT NULL,
    instance_id text NOT NULL,
    unit smallint NOT NULL,
    amount bigint,
    from_anchor timestamp with time zone,
    "interval" interval,
    limit_usage boolean
);
    DROP TABLE projections.quotas;
       projections         heap    zitadel    false    7            K           1259    17491    quotas_notifications    TABLE     .  CREATE TABLE projections.quotas_notifications (
    instance_id text NOT NULL,
    unit smallint NOT NULL,
    id text NOT NULL,
    call_url text NOT NULL,
    percent bigint NOT NULL,
    repeat boolean NOT NULL,
    latest_due_period_start timestamp with time zone,
    next_due_threshold bigint
);
 -   DROP TABLE projections.quotas_notifications;
       projections         heap    zitadel    false    7            J           1259    17484    quotas_periods    TABLE     �   CREATE TABLE projections.quotas_periods (
    instance_id text NOT NULL,
    unit smallint NOT NULL,
    start timestamp with time zone NOT NULL,
    usage bigint NOT NULL
);
 '   DROP TABLE projections.quotas_periods;
       projections         heap    zitadel    false    7            9           1259    17336    secret_generators2    TABLE       CREATE TABLE projections.secret_generators2 (
    generator_type smallint NOT NULL,
    aggregate_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    length bigint NOT NULL,
    expiry bigint NOT NULL,
    include_lower_letters boolean NOT NULL,
    include_upper_letters boolean NOT NULL,
    include_digits boolean NOT NULL,
    include_symbols boolean NOT NULL
);
 +   DROP TABLE projections.secret_generators2;
       projections         heap    zitadel    false    7            C           1259    17428    security_policies    TABLE       CREATE TABLE projections.security_policies (
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    instance_id text NOT NULL,
    sequence bigint NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    origins text[]
);
 *   DROP TABLE projections.security_policies;
       projections         heap    zitadel    false    7            F           1259    17455 	   sessions6    TABLE     g  CREATE TABLE projections.sessions6 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    creator text NOT NULL,
    user_id text,
    user_checked_at timestamp with time zone,
    password_checked_at timestamp with time zone,
    intent_checked_at timestamp with time zone,
    webauthn_checked_at timestamp with time zone,
    webauthn_user_verified boolean,
    totp_checked_at timestamp with time zone,
    otp_sms_checked_at timestamp with time zone,
    otp_email_checked_at timestamp with time zone,
    metadata jsonb,
    token_id text,
    user_agent_fingerprint_id text,
    user_agent_ip text,
    user_agent_description text,
    user_agent_header jsonb
);
 "   DROP TABLE projections.sessions6;
       projections         heap    zitadel    false    7            ;           1259    17350    sms_configs2    TABLE     D  CREATE TABLE projections.sms_configs2 (
    id text NOT NULL,
    aggregate_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL
);
 %   DROP TABLE projections.sms_configs2;
       projections         heap    zitadel    false    7            <           1259    17357    sms_configs2_twilio    TABLE     �   CREATE TABLE projections.sms_configs2_twilio (
    sms_id text NOT NULL,
    instance_id text NOT NULL,
    sid text NOT NULL,
    sender_number text NOT NULL,
    token jsonb NOT NULL
);
 ,   DROP TABLE projections.sms_configs2_twilio;
       projections         heap    zitadel    false    7            :           1259    17343    smtp_configs1    TABLE     �  CREATE TABLE projections.smtp_configs1 (
    aggregate_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    tls boolean NOT NULL,
    sender_address text NOT NULL,
    sender_name text NOT NULL,
    reply_to_address text NOT NULL,
    host text NOT NULL,
    username text NOT NULL,
    password jsonb
);
 &   DROP TABLE projections.smtp_configs1;
       projections         heap    zitadel    false    7            7           1259    17313    user_auth_methods4    TABLE     �  CREATE TABLE projections.user_auth_methods4 (
    user_id text NOT NULL,
    method_type smallint NOT NULL,
    token_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    name text NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
 +   DROP TABLE projections.user_auth_methods4;
       projections         heap    zitadel    false    7            5           1259    17286    user_grants3    TABLE     �  CREATE TABLE projections.user_grants3 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    user_id text NOT NULL,
    resource_owner_user text NOT NULL,
    user_owner_removed boolean DEFAULT false NOT NULL,
    project_id text NOT NULL,
    resource_owner_project text NOT NULL,
    project_owner_removed boolean DEFAULT false NOT NULL,
    grant_id text NOT NULL,
    granted_org text NOT NULL,
    granted_org_removed boolean DEFAULT false NOT NULL,
    roles text[],
    owner_removed boolean DEFAULT false NOT NULL
);
 %   DROP TABLE projections.user_grants3;
       projections         heap    zitadel    false    7            6           1259    17303    user_metadata4    TABLE     h  CREATE TABLE projections.user_metadata4 (
    user_id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    key text NOT NULL,
    value bytea,
    owner_removed boolean DEFAULT false NOT NULL
);
 '   DROP TABLE projections.user_metadata4;
       projections         heap    zitadel    false    7            &           1259    17114    users8    TABLE     �  CREATE TABLE projections.users8 (
    id text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    change_date timestamp with time zone NOT NULL,
    sequence bigint NOT NULL,
    state smallint NOT NULL,
    resource_owner text NOT NULL,
    instance_id text NOT NULL,
    username text NOT NULL,
    type smallint NOT NULL,
    owner_removed boolean DEFAULT false NOT NULL
);
    DROP TABLE projections.users8;
       projections         heap    zitadel    false    7            '           1259    17125    users8_humans    TABLE     �  CREATE TABLE projections.users8_humans (
    user_id text NOT NULL,
    instance_id text NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    nick_name text,
    display_name text,
    preferred_language text,
    gender smallint,
    avatar_key text,
    email text NOT NULL,
    is_email_verified boolean DEFAULT false NOT NULL,
    phone text,
    is_phone_verified boolean
);
 &   DROP TABLE projections.users8_humans;
       projections         heap    zitadel    false    7            (           1259    17138    users8_machines    TABLE     �   CREATE TABLE projections.users8_machines (
    user_id text NOT NULL,
    instance_id text NOT NULL,
    name text NOT NULL,
    description text,
    has_secret boolean DEFAULT false NOT NULL,
    access_token_type smallint DEFAULT 0 NOT NULL
);
 (   DROP TABLE projections.users8_machines;
       projections         heap    zitadel    false    7            )           1259    17152    users8_notifications    TABLE     �   CREATE TABLE projections.users8_notifications (
    user_id text NOT NULL,
    instance_id text NOT NULL,
    last_email text,
    verified_email text,
    last_phone text,
    verified_phone text,
    password_set boolean DEFAULT false NOT NULL
);
 -   DROP TABLE projections.users8_notifications;
       projections         heap    zitadel    false    7            �            1259    16554    assets    TABLE       CREATE TABLE system.assets (
    instance_id text NOT NULL,
    asset_type text,
    resource_owner text NOT NULL,
    name text NOT NULL,
    content_type text,
    hash text GENERATED ALWAYS AS (md5(data)) STORED,
    data bytea,
    updated_at timestamp with time zone
);
    DROP TABLE system.assets;
       system         heap    zitadel    false    6            �            1259    16387    encryption_keys    TABLE     U   CREATE TABLE system.encryption_keys (
    id text NOT NULL,
    key text NOT NULL
);
 #   DROP TABLE system.encryption_keys;
       system         heap    zitadel    false    6            �          0    16422    current_sequences 
   TABLE DATA           �   COPY adminapi.current_sequences (view_name, current_sequence, event_date, last_successful_spooler_run, instance_id) FROM stdin;
    adminapi          zitadel    false    225   �      �          0    16429    failed_events 
   TABLE DATA           w   COPY adminapi.failed_events (view_name, failed_sequence, failure_count, err_msg, instance_id, last_failed) FROM stdin;
    adminapi          zitadel    false    226   �      �          0    16415    locks 
   TABLE DATA           R   COPY adminapi.locks (locker_id, locked_until, view_name, instance_id) FROM stdin;
    adminapi          zitadel    false    224         �          0    16436    styling 
   TABLE DATA           t  COPY adminapi.styling (aggregate_id, creation_date, change_date, label_policy_state, sequence, primary_color, background_color, warn_color, font_color, primary_color_dark, background_color_dark, warn_color_dark, font_color_dark, logo_url, icon_url, logo_dark_url, icon_dark_url, font_url, err_msg_popup, disable_watermark, hide_login_name_suffix, instance_id) FROM stdin;
    adminapi          zitadel    false    227         �          0    16569    styling2 
   TABLE DATA           �  COPY adminapi.styling2 (aggregate_id, creation_date, change_date, label_policy_state, sequence, primary_color, background_color, warn_color, font_color, primary_color_dark, background_color_dark, warn_color_dark, font_color_dark, logo_url, icon_url, logo_dark_url, icon_dark_url, font_url, err_msg_popup, disable_watermark, hide_login_name_suffix, instance_id, owner_removed) FROM stdin;
    adminapi          zitadel    false    244   ;      �          0    16525    auth_requests 
   TABLE DATA           o   COPY auth.auth_requests (id, request, code, request_type, creation_date, change_date, instance_id) FROM stdin;
    auth          zitadel    false    239   �      �          0    16452    current_sequences 
   TABLE DATA           |   COPY auth.current_sequences (view_name, current_sequence, event_date, last_successful_spooler_run, instance_id) FROM stdin;
    auth          zitadel    false    229   �      �          0    16459    failed_events 
   TABLE DATA           s   COPY auth.failed_events (view_name, failed_sequence, failure_count, err_msg, instance_id, last_failed) FROM stdin;
    auth          zitadel    false    230         �          0    16518    idp_configs 
   TABLE DATA           �  COPY auth.idp_configs (idp_config_id, creation_date, change_date, sequence, aggregate_id, name, idp_state, idp_provider_type, is_oidc, oidc_client_id, oidc_client_secret, oidc_issuer, oidc_scopes, oidc_idp_display_name_mapping, oidc_idp_username_mapping, styling_type, oauth_authorization_endpoint, oauth_token_endpoint, auto_register, jwt_endpoint, jwt_keys_endpoint, jwt_header_name, instance_id) FROM stdin;
    auth          zitadel    false    238         �          0    16615    idp_configs2 
   TABLE DATA           �  COPY auth.idp_configs2 (idp_config_id, creation_date, change_date, sequence, aggregate_id, name, idp_state, idp_provider_type, is_oidc, oidc_client_id, oidc_client_secret, oidc_issuer, oidc_scopes, oidc_idp_display_name_mapping, oidc_idp_username_mapping, styling_type, oauth_authorization_endpoint, oauth_token_endpoint, auto_register, jwt_endpoint, jwt_keys_endpoint, jwt_header_name, instance_id, owner_removed) FROM stdin;
    auth          zitadel    false    249   ;      �          0    16511    idp_providers 
   TABLE DATA           �   COPY auth.idp_providers (aggregate_id, idp_config_id, creation_date, change_date, sequence, name, idp_config_type, idp_provider_type, idp_state, styling_type, instance_id) FROM stdin;
    auth          zitadel    false    237   X      �          0    16606    idp_providers2 
   TABLE DATA           �   COPY auth.idp_providers2 (aggregate_id, idp_config_id, creation_date, change_date, sequence, name, idp_config_type, idp_provider_type, idp_state, styling_type, instance_id, owner_removed) FROM stdin;
    auth          zitadel    false    248   u      �          0    16445    locks 
   TABLE DATA           N   COPY auth.locks (locker_id, locked_until, view_name, instance_id) FROM stdin;
    auth          zitadel    false    228   �      �          0    16504    org_project_mapping 
   TABLE DATA           ^   COPY auth.org_project_mapping (org_id, project_id, project_grant_id, instance_id) FROM stdin;
    auth          zitadel    false    236   �      �          0    16597    org_project_mapping2 
   TABLE DATA           n   COPY auth.org_project_mapping2 (org_id, project_id, project_grant_id, instance_id, owner_removed) FROM stdin;
    auth          zitadel    false    247   �      �          0    16496    refresh_tokens 
   TABLE DATA           �   COPY auth.refresh_tokens (id, creation_date, change_date, resource_owner, token, client_id, user_agent_id, user_id, auth_time, idle_expiration, expiration, sequence, scopes, audience, amr, instance_id) FROM stdin;
    auth          zitadel    false    235   �      �          0    16487    tokens 
   TABLE DATA           �   COPY auth.tokens (id, creation_date, change_date, resource_owner, application_id, user_agent_id, user_id, expiration, sequence, scopes, audience, preferred_language, refresh_token_id, is_pat, instance_id) FROM stdin;
    auth          zitadel    false    234         �          0    16480    user_external_idps 
   TABLE DATA           �   COPY auth.user_external_idps (external_user_id, idp_config_id, user_id, idp_name, user_display_name, creation_date, change_date, sequence, resource_owner, instance_id) FROM stdin;
    auth          zitadel    false    233   2      �          0    16588    user_external_idps2 
   TABLE DATA           �   COPY auth.user_external_idps2 (external_user_id, idp_config_id, user_id, idp_name, user_display_name, creation_date, change_date, sequence, resource_owner, instance_id, owner_removed) FROM stdin;
    auth          zitadel    false    246   O      �          0    16473    user_sessions 
   TABLE DATA           �  COPY auth.user_sessions (creation_date, change_date, resource_owner, state, user_agent_id, user_id, user_name, password_verification, second_factor_verification, multi_factor_verification, sequence, second_factor_verification_type, multi_factor_verification_type, user_display_name, login_name, external_login_verification, selected_idp_config_id, passwordless_verification, avatar_key, instance_id) FROM stdin;
    auth          zitadel    false    232   l      �          0    16466    users 
   TABLE DATA           �  COPY auth.users (id, creation_date, change_date, resource_owner, user_state, password_set, password_change_required, password_change, last_login, user_name, login_names, preferred_login_name, first_name, last_name, nick_name, display_name, preferred_language, gender, email, is_email_verified, phone, is_phone_verified, country, locality, postal_code, region, street_address, otp_state, mfa_max_set_up, mfa_init_skipped, sequence, init_required, username_change_required, machine_name, machine_description, user_type, u2f_tokens, passwordless_tokens, avatar_key, passwordless_init_required, password_init_required, instance_id) FROM stdin;
    auth          zitadel    false    231   	      �          0    16579    users2 
   TABLE DATA           �  COPY auth.users2 (id, creation_date, change_date, resource_owner, user_state, password_set, password_change_required, password_change, last_login, user_name, login_names, preferred_login_name, first_name, last_name, nick_name, display_name, preferred_language, gender, email, is_email_verified, phone, is_phone_verified, country, locality, postal_code, region, street_address, otp_state, mfa_max_set_up, mfa_init_skipped, sequence, init_required, username_change_required, machine_name, machine_description, user_type, u2f_tokens, passwordless_tokens, avatar_key, passwordless_init_required, password_init_required, instance_id, owner_removed, otp_sms_added, otp_email_added) FROM stdin;
    auth          zitadel    false    245   <	      �          0    16396    events2 
   TABLE DATA           �   COPY eventstore.events2 (instance_id, aggregate_type, aggregate_id, event_type, sequence, revision, created_at, payload, creator, owner, "position", in_tx_order) FROM stdin;
 
   eventstore          zitadel    false    221   �      �          0    16407    unique_constraints 
   TABLE DATA           X   COPY eventstore.unique_constraints (instance_id, unique_type, unique_field) FROM stdin;
 
   eventstore          zitadel    false    223   
�      �          0    16625    access 
   TABLE DATA           �   COPY logstore.access (log_date, protocol, request_url, response_status, request_headers, response_headers, instance_id, project_id, requested_domain, requested_host) FROM stdin;
    logstore          zitadel    false    250   ��      �          0    16631 	   execution 
   TABLE DATA           j   COPY logstore.execution (log_date, took, message, loglevel, instance_id, action_id, metadata) FROM stdin;
    logstore          zitadel    false    251   ��      �          0    16679    actions3 
   TABLE DATA           �   COPY projections.actions3 (id, creation_date, change_date, resource_owner, instance_id, action_state, sequence, name, script, timeout, allowed_to_fail, owner_removed) FROM stdin;
    projections          zitadel    false    256   �      �          0    17012    apps5 
   TABLE DATA           �   COPY projections.apps5 (id, name, project_id, creation_date, change_date, resource_owner, instance_id, state, sequence, owner_removed) FROM stdin;
    projections          zitadel    false    285   ,�      �          0    17022    apps5_api_configs 
   TABLE DATA           l   COPY projections.apps5_api_configs (app_id, instance_id, client_id, client_secret, auth_method) FROM stdin;
    projections          zitadel    false    286   /�      �          0    17035    apps5_oidc_configs 
   TABLE DATA           �  COPY projections.apps5_oidc_configs (app_id, instance_id, version, client_id, client_secret, redirect_uris, response_types, grant_types, application_type, auth_method_type, post_logout_redirect_uris, is_dev_mode, access_token_type, access_token_role_assertion, id_token_role_assertion, id_token_userinfo_assertion, clock_skew, additional_origins, skip_native_app_success_page) FROM stdin;
    projections          zitadel    false    287   ��      �          0    17053    apps5_saml_configs 
   TABLE DATA           i   COPY projections.apps5_saml_configs (app_id, instance_id, entity_id, metadata, metadata_url) FROM stdin;
    projections          zitadel    false    288   �1                 0    17463    auth_requests 
   TABLE DATA           �   COPY projections.auth_requests (id, creation_date, change_date, sequence, resource_owner, instance_id, login_client, client_id, redirect_uri, scope, prompt, ui_locales, max_age, login_hint, hint_user_id) FROM stdin;
    projections          zitadel    false    327   �1      �          0    17262    authn_keys2 
   TABLE DATA           �   COPY projections.authn_keys2 (id, creation_date, change_date, resource_owner, instance_id, aggregate_id, sequence, object_id, expiration, identifier, public_key, enabled, type, owner_removed) FROM stdin;
    projections          zitadel    false    307   �1      �          0    16540    current_sequences 
   TABLE DATA           }   COPY projections.current_sequences (projection_name, aggregate_type, current_sequence, instance_id, "timestamp") FROM stdin;
    projections          zitadel    false    241   �1      �          0    16652    current_states 
   TABLE DATA           �   COPY projections.current_states (projection_name, instance_id, last_updated, aggregate_id, aggregate_type, sequence, event_date, "position", filter_offset) FROM stdin;
    projections          zitadel    false    253   �1      �          0    17105    custom_texts2 
   TABLE DATA           �   COPY projections.custom_texts2 (aggregate_id, instance_id, creation_date, change_date, sequence, is_default, template, language, key, text, owner_removed) FROM stdin;
    projections          zitadel    false    293   7      �          0    17444    device_authorizations 
   TABLE DATA           �   COPY projections.device_authorizations (id, client_id, device_code, user_code, expires, scopes, state, subject, creation_date, change_date, sequence, instance_id) FROM stdin;
    projections          zitadel    false    325   U>      �          0    16751    domain_policies2 
   TABLE DATA           �   COPY projections.domain_policies2 (id, creation_date, change_date, sequence, state, user_login_must_be_domain, validate_org_domains, smtp_sender_address_matches_instance_domain, is_default, resource_owner, instance_id, owner_removed) FROM stdin;
    projections          zitadel    false    263   r>      �          0    16547    failed_events 
   TABLE DATA           ~   COPY projections.failed_events (projection_name, failed_sequence, failure_count, error, instance_id, last_failed) FROM stdin;
    projections          zitadel    false    242   �>      �          0    16643    failed_events2 
   TABLE DATA           �   COPY projections.failed_events2 (projection_name, instance_id, aggregate_type, aggregate_id, event_creation_date, failed_sequence, failure_count, error, last_failed) FROM stdin;
    projections          zitadel    false    252   �>      �          0    16692    flow_triggers2 
   TABLE DATA           �   COPY projections.flow_triggers2 (flow_type, change_date, sequence, trigger_type, resource_owner, instance_id, trigger_sequence, action_id, owner_removed) FROM stdin;
    projections          zitadel    false    257   �?      �          0    17076    idp_login_policy_links5 
   TABLE DATA           �   COPY projections.idp_login_policy_links5 (idp_id, aggregate_id, creation_date, change_date, sequence, resource_owner, instance_id, provider_type, owner_removed) FROM stdin;
    projections          zitadel    false    290   �?      �          0    16852    idp_templates5 
   TABLE DATA           �   COPY projections.idp_templates5 (id, creation_date, change_date, sequence, resource_owner, instance_id, state, name, owner_type, type, owner_removed, is_creation_allowed, is_linking_allowed, is_auto_creation, is_auto_update) FROM stdin;
    projections          zitadel    false    272   �?      �          0    16988    idp_templates5_apple 
   TABLE DATA           y   COPY projections.idp_templates5_apple (idp_id, instance_id, client_id, team_id, key_id, private_key, scopes) FROM stdin;
    projections          zitadel    false    283   @      �          0    16903    idp_templates5_azure 
   TABLE DATA           �   COPY projections.idp_templates5_azure (idp_id, instance_id, client_id, client_secret, scopes, tenant, is_email_verified) FROM stdin;
    projections          zitadel    false    276   )@      �          0    16916    idp_templates5_github 
   TABLE DATA           k   COPY projections.idp_templates5_github (idp_id, instance_id, client_id, client_secret, scopes) FROM stdin;
    projections          zitadel    false    277   F@      �          0    16928     idp_templates5_github_enterprise 
   TABLE DATA           �   COPY projections.idp_templates5_github_enterprise (idp_id, instance_id, client_id, client_secret, authorization_endpoint, token_endpoint, user_endpoint, scopes) FROM stdin;
    projections          zitadel    false    278   c@      �          0    16940    idp_templates5_gitlab 
   TABLE DATA           k   COPY projections.idp_templates5_gitlab (idp_id, instance_id, client_id, client_secret, scopes) FROM stdin;
    projections          zitadel    false    279   �@      �          0    16952 !   idp_templates5_gitlab_self_hosted 
   TABLE DATA              COPY projections.idp_templates5_gitlab_self_hosted (idp_id, instance_id, issuer, client_id, client_secret, scopes) FROM stdin;
    projections          zitadel    false    280   �@      �          0    16964    idp_templates5_google 
   TABLE DATA           k   COPY projections.idp_templates5_google (idp_id, instance_id, client_id, client_secret, scopes) FROM stdin;
    projections          zitadel    false    281   �@      �          0    16891    idp_templates5_jwt 
   TABLE DATA           x   COPY projections.idp_templates5_jwt (idp_id, instance_id, issuer, jwt_endpoint, keys_endpoint, header_name) FROM stdin;
    projections          zitadel    false    275   �@      �          0    16976    idp_templates5_ldap2 
   TABLE DATA           �  COPY projections.idp_templates5_ldap2 (idp_id, instance_id, servers, start_tls, base_dn, bind_dn, bind_password, user_base, user_object_classes, user_filters, timeout, id_attribute, first_name_attribute, last_name_attribute, display_name_attribute, nick_name_attribute, preferred_username_attribute, email_attribute, email_verified, phone_attribute, phone_verified_attribute, preferred_language_attribute, avatar_url_attribute, profile_attribute) FROM stdin;
    projections          zitadel    false    282   �@      �          0    16866    idp_templates5_oauth2 
   TABLE DATA           �   COPY projections.idp_templates5_oauth2 (idp_id, instance_id, client_id, client_secret, authorization_endpoint, token_endpoint, user_endpoint, scopes, id_attribute) FROM stdin;
    projections          zitadel    false    273   A      �          0    16878    idp_templates5_oidc 
   TABLE DATA           �   COPY projections.idp_templates5_oidc (idp_id, instance_id, issuer, client_id, client_secret, scopes, id_token_mapping) FROM stdin;
    projections          zitadel    false    274   .A      �          0    17000    idp_templates5_saml 
   TABLE DATA           �   COPY projections.idp_templates5_saml (idp_id, instance_id, metadata, key, certificate, binding, with_signed_request) FROM stdin;
    projections          zitadel    false    284   KA      �          0    17066    idp_user_links3 
   TABLE DATA           �   COPY projections.idp_user_links3 (idp_id, user_id, external_user_id, creation_date, change_date, sequence, resource_owner, instance_id, display_name, owner_removed) FROM stdin;
    projections          zitadel    false    289   hA      �          0    16817    idps3 
   TABLE DATA           �   COPY projections.idps3 (id, creation_date, change_date, sequence, resource_owner, instance_id, state, name, styling_type, owner_type, auto_register, type, owner_removed) FROM stdin;
    projections          zitadel    false    269   �A      �          0    16840    idps3_jwt_config 
   TABLE DATA           r   COPY projections.idps3_jwt_config (idp_id, instance_id, issuer, keys_endpoint, header_name, endpoint) FROM stdin;
    projections          zitadel    false    271   �A      �          0    16828    idps3_oidc_config 
   TABLE DATA           �   COPY projections.idps3_oidc_config (idp_id, instance_id, client_id, client_secret, issuer, scopes, display_name_mapping, username_mapping, authorization_endpoint, token_endpoint) FROM stdin;
    projections          zitadel    false    270   �A      �          0    17214    instance_domains 
   TABLE DATA           �   COPY projections.instance_domains (instance_id, creation_date, change_date, sequence, domain, is_generated, is_primary) FROM stdin;
    projections          zitadel    false    303   �A      �          0    17222    instance_members3 
   TABLE DATA           �   COPY projections.instance_members3 (creation_date, change_date, user_id, user_resource_owner, user_owner_removed, roles, sequence, resource_owner, instance_id, owner_removed, id) FROM stdin;
    projections          zitadel    false    304   SB      �          0    17323 	   instances 
   TABLE DATA           �   COPY projections.instances (id, name, change_date, creation_date, default_org_id, iam_project_id, console_client_id, console_app_id, sequence, default_language) FROM stdin;
    projections          zitadel    false    312   �B      �          0    17383    keys4 
   TABLE DATA           {   COPY projections.keys4 (id, creation_date, change_date, resource_owner, instance_id, sequence, algorithm, use) FROM stdin;
    projections          zitadel    false    319   LC      �          0    17416    keys4_certificate 
   TABLE DATA           V   COPY projections.keys4_certificate (id, instance_id, expiry, certificate) FROM stdin;
    projections          zitadel    false    322   �C      �          0    17392    keys4_private 
   TABLE DATA           J   COPY projections.keys4_private (id, instance_id, expiry, key) FROM stdin;
    projections          zitadel    false    320   �C      �          0    17404    keys4_public 
   TABLE DATA           I   COPY projections.keys4_public (id, instance_id, expiry, key) FROM stdin;
    projections          zitadel    false    321   !K      �          0    16761    label_policies3 
   TABLE DATA           �  COPY projections.label_policies3 (id, creation_date, change_date, sequence, state, is_default, resource_owner, instance_id, hide_login_name_suffix, watermark_disabled, should_error_popup, font_url, light_primary_color, light_warn_color, light_background_color, light_font_color, light_logo_url, light_icon_url, dark_primary_color, dark_warn_color, dark_background_color, dark_font_color, dark_logo_url, dark_icon_url, owner_removed, theme_mode) FROM stdin;
    projections          zitadel    false    264   AM                0    17498    limits 
   TABLE DATA           �   COPY projections.limits (aggregate_id, creation_date, change_date, resource_owner, instance_id, sequence, audit_log_retention) FROM stdin;
    projections          zitadel    false    332   �M      �          0    16731    lockout_policies2 
   TABLE DATA           �   COPY projections.lockout_policies2 (id, creation_date, change_date, sequence, state, is_default, resource_owner, instance_id, max_password_attempts, show_failure, owner_removed) FROM stdin;
    projections          zitadel    false    261   �M      �          0    16533    locks 
   TABLE DATA           [   COPY projections.locks (locker_id, locked_until, projection_name, instance_id) FROM stdin;
    projections          zitadel    false    240   SN      �          0    17176    login_names2_domains 
   TABLE DATA           q   COPY projections.login_names2_domains (name, is_primary, resource_owner, instance_id, owner_removed) FROM stdin;
    projections          zitadel    false    299   �N      �          0    17186    login_names2_policies 
   TABLE DATA           |   COPY projections.login_names2_policies (must_be_domain, is_default, resource_owner, instance_id, owner_removed) FROM stdin;
    projections          zitadel    false    300   O      �          0    17165    login_names2_users 
   TABLE DATA           l   COPY projections.login_names2_users (id, user_name, resource_owner, instance_id, owner_removed) FROM stdin;
    projections          zitadel    false    298   LO      �          0    16806    login_policies5 
   TABLE DATA           7  COPY projections.login_policies5 (aggregate_id, instance_id, creation_date, change_date, sequence, is_default, allow_register, allow_username_password, allow_external_idps, force_mfa, force_mfa_local_only, second_factors, multi_factors, passwordless_type, hide_password_reset, ignore_unknown_usernames, allow_domain_discovery, disable_login_with_email, disable_login_with_phone, default_redirect_uri, password_check_lifetime, external_login_check_lifetime, mfa_init_skip_lifetime, second_factor_check_lifetime, multi_factor_check_lifetime, owner_removed) FROM stdin;
    projections          zitadel    false    268   j�      �          0    17086    mail_templates2 
   TABLE DATA           �   COPY projections.mail_templates2 (aggregate_id, instance_id, creation_date, change_date, sequence, state, is_default, template, owner_removed) FROM stdin;
    projections          zitadel    false    291   �      �          0    17096    message_texts2 
   TABLE DATA           �   COPY projections.message_texts2 (aggregate_id, instance_id, creation_date, change_date, sequence, state, type, language, title, pre_header, subject, greeting, text, button_text, footer_text, owner_removed) FROM stdin;
    projections          zitadel    false    292   ��                0    17470 
   milestones 
   TABLE DATA              COPY projections.milestones (instance_id, type, reached_date, last_pushed_date, primary_domain, ignore_client_ids) FROM stdin;
    projections          zitadel    false    328   ��      �          0    17436    notification_policies 
   TABLE DATA           �   COPY projections.notification_policies (id, creation_date, change_date, resource_owner, instance_id, sequence, state, is_default, password_change, owner_removed) FROM stdin;
    projections          zitadel    false    324   `�      �          0    17376    notification_providers 
   TABLE DATA           �   COPY projections.notification_providers (aggregate_id, creation_date, change_date, sequence, resource_owner, instance_id, state, provider_type, compact) FROM stdin;
    projections          zitadel    false    318   ��      �          0    17369    oidc_settings2 
   TABLE DATA           �   COPY projections.oidc_settings2 (aggregate_id, creation_date, change_date, resource_owner, instance_id, sequence, access_token_lifetime, id_token_lifetime, refresh_token_idle_expiration, refresh_token_expiration) FROM stdin;
    projections          zitadel    false    317   ؞      �          0    16797    org_domains2 
   TABLE DATA           �   COPY projections.org_domains2 (org_id, instance_id, creation_date, change_date, sequence, domain, is_verified, is_primary, validation_type, owner_removed) FROM stdin;
    projections          zitadel    false    267   <�      �          0    17201    org_members3 
   TABLE DATA           �   COPY projections.org_members3 (creation_date, change_date, user_id, user_resource_owner, user_owner_removed, roles, sequence, resource_owner, instance_id, owner_removed, org_id) FROM stdin;
    projections          zitadel    false    302   ʟ      �          0    16670    org_metadata2 
   TABLE DATA           �   COPY projections.org_metadata2 (org_id, creation_date, change_date, sequence, resource_owner, instance_id, key, value, owner_removed) FROM stdin;
    projections          zitadel    false    255   u�      �          0    16660    orgs1 
   TABLE DATA           �   COPY projections.orgs1 (id, creation_date, change_date, resource_owner, instance_id, org_state, sequence, name, primary_domain) FROM stdin;
    projections          zitadel    false    254   ��      �          0    16721    password_age_policies2 
   TABLE DATA           �   COPY projections.password_age_policies2 (id, creation_date, change_date, sequence, state, is_default, resource_owner, instance_id, expire_warn_days, max_age_days, owner_removed) FROM stdin;
    projections          zitadel    false    260   1�      �          0    16711    password_complexity_policies2 
   TABLE DATA           �   COPY projections.password_complexity_policies2 (id, creation_date, change_date, sequence, state, is_default, resource_owner, instance_id, min_length, has_lowercase, has_uppercase, has_symbol, has_number, owner_removed) FROM stdin;
    projections          zitadel    false    259   ��      �          0    17275    personal_access_tokens3 
   TABLE DATA           �   COPY projections.personal_access_tokens3 (id, creation_date, change_date, sequence, resource_owner, instance_id, user_id, expiration, scopes, owner_removed) FROM stdin;
    projections          zitadel    false    308   �      �          0    16741    privacy_policies3 
   TABLE DATA           �   COPY projections.privacy_policies3 (id, creation_date, change_date, sequence, state, is_default, resource_owner, instance_id, privacy_link, tos_link, help_link, support_email, owner_removed) FROM stdin;
    projections          zitadel    false    262   ��      �          0    17247    project_grant_members3 
   TABLE DATA           �   COPY projections.project_grant_members3 (creation_date, change_date, user_id, user_resource_owner, user_owner_removed, roles, sequence, resource_owner, instance_id, owner_removed, project_id, grant_id, granted_org, granted_org_removed) FROM stdin;
    projections          zitadel    false    306   4�      �          0    16775    project_grants3 
   TABLE DATA           �   COPY projections.project_grants3 (grant_id, creation_date, change_date, sequence, state, resource_owner, instance_id, project_id, granted_org_id, granted_role_keys, owner_removed, granted_org_removed) FROM stdin;
    projections          zitadel    false    265   Q�      �          0    17234    project_members3 
   TABLE DATA           �   COPY projections.project_members3 (creation_date, change_date, user_id, user_resource_owner, user_owner_removed, roles, sequence, resource_owner, instance_id, owner_removed, project_id) FROM stdin;
    projections          zitadel    false    305   n�      �          0    16788    project_roles3 
   TABLE DATA           �   COPY projections.project_roles3 (project_id, role_key, creation_date, change_date, sequence, resource_owner, instance_id, display_name, group_name, owner_removed) FROM stdin;
    projections          zitadel    false    266   �      �          0    16701 	   projects3 
   TABLE DATA           �   COPY projections.projects3 (id, creation_date, change_date, sequence, state, resource_owner, instance_id, name, project_role_assertion, project_role_check, has_project_check, private_labeling_setting, owner_removed) FROM stdin;
    projections          zitadel    false    258   2�                0    17477    quotas 
   TABLE DATA           j   COPY projections.quotas (id, instance_id, unit, amount, from_anchor, "interval", limit_usage) FROM stdin;
    projections          zitadel    false    329   ݤ                0    17491    quotas_notifications 
   TABLE DATA           �   COPY projections.quotas_notifications (instance_id, unit, id, call_url, percent, repeat, latest_due_period_start, next_due_threshold) FROM stdin;
    projections          zitadel    false    331   ��                0    17484    quotas_periods 
   TABLE DATA           N   COPY projections.quotas_periods (instance_id, unit, start, usage) FROM stdin;
    projections          zitadel    false    330   �      �          0    17336    secret_generators2 
   TABLE DATA           �   COPY projections.secret_generators2 (generator_type, aggregate_id, creation_date, change_date, sequence, resource_owner, instance_id, length, expiry, include_lower_letters, include_upper_letters, include_digits, include_symbols) FROM stdin;
    projections          zitadel    false    313   4�      �          0    17428    security_policies 
   TABLE DATA           u   COPY projections.security_policies (creation_date, change_date, instance_id, sequence, enabled, origins) FROM stdin;
    projections          zitadel    false    323   �      �          0    17455 	   sessions6 
   TABLE DATA           �  COPY projections.sessions6 (id, creation_date, change_date, sequence, state, resource_owner, instance_id, creator, user_id, user_checked_at, password_checked_at, intent_checked_at, webauthn_checked_at, webauthn_user_verified, totp_checked_at, otp_sms_checked_at, otp_email_checked_at, metadata, token_id, user_agent_fingerprint_id, user_agent_ip, user_agent_description, user_agent_header) FROM stdin;
    projections          zitadel    false    326   �      �          0    17350    sms_configs2 
   TABLE DATA           �   COPY projections.sms_configs2 (id, aggregate_id, creation_date, change_date, sequence, state, resource_owner, instance_id) FROM stdin;
    projections          zitadel    false    315   #�      �          0    17357    sms_configs2_twilio 
   TABLE DATA           b   COPY projections.sms_configs2_twilio (sms_id, instance_id, sid, sender_number, token) FROM stdin;
    projections          zitadel    false    316   @�      �          0    17343    smtp_configs1 
   TABLE DATA           �   COPY projections.smtp_configs1 (aggregate_id, creation_date, change_date, sequence, resource_owner, instance_id, tls, sender_address, sender_name, reply_to_address, host, username, password) FROM stdin;
    projections          zitadel    false    314   ]�      �          0    17313    user_auth_methods4 
   TABLE DATA           �   COPY projections.user_auth_methods4 (user_id, method_type, token_id, creation_date, change_date, sequence, state, resource_owner, instance_id, name, owner_removed) FROM stdin;
    projections          zitadel    false    311   z�      �          0    17286    user_grants3 
   TABLE DATA           (  COPY projections.user_grants3 (id, creation_date, change_date, sequence, state, resource_owner, instance_id, user_id, resource_owner_user, user_owner_removed, project_id, resource_owner_project, project_owner_removed, grant_id, granted_org, granted_org_removed, roles, owner_removed) FROM stdin;
    projections          zitadel    false    309   ��      �          0    17303    user_metadata4 
   TABLE DATA           �   COPY projections.user_metadata4 (user_id, creation_date, change_date, sequence, resource_owner, instance_id, key, value, owner_removed) FROM stdin;
    projections          zitadel    false    310   ��      �          0    17114    users8 
   TABLE DATA           �   COPY projections.users8 (id, creation_date, change_date, sequence, state, resource_owner, instance_id, username, type, owner_removed) FROM stdin;
    projections          zitadel    false    294   Ѧ      �          0    17125    users8_humans 
   TABLE DATA           �   COPY projections.users8_humans (user_id, instance_id, first_name, last_name, nick_name, display_name, preferred_language, gender, avatar_key, email, is_email_verified, phone, is_phone_verified) FROM stdin;
    projections          zitadel    false    295   �      �          0    17138    users8_machines 
   TABLE DATA           v   COPY projections.users8_machines (user_id, instance_id, name, description, has_secret, access_token_type) FROM stdin;
    projections          zitadel    false    296   z�      �          0    17152    users8_notifications 
   TABLE DATA           �   COPY projections.users8_notifications (user_id, instance_id, last_email, verified_email, last_phone, verified_phone, password_set) FROM stdin;
    projections          zitadel    false    297   ԝ      �          0    16554    assets 
   TABLE DATA           o   COPY system.assets (instance_id, asset_type, resource_owner, name, content_type, data, updated_at) FROM stdin;
    system          zitadel    false    243   '	      �          0    16387    encryption_keys 
   TABLE DATA           2   COPY system.encryption_keys (id, key) FROM stdin;
    system          zitadel    false    220   -	                 0    0 
   system_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('eventstore.system_seq', 1, false);
       
   eventstore          zitadel    false    222            �           2606    16428 (   current_sequences current_sequences_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY adminapi.current_sequences
    ADD CONSTRAINT current_sequences_pkey PRIMARY KEY (view_name, instance_id);
 T   ALTER TABLE ONLY adminapi.current_sequences DROP CONSTRAINT current_sequences_pkey;
       adminapi            zitadel    false    225    225            �           2606    16435     failed_events failed_events_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY adminapi.failed_events
    ADD CONSTRAINT failed_events_pkey PRIMARY KEY (view_name, failed_sequence, instance_id);
 L   ALTER TABLE ONLY adminapi.failed_events DROP CONSTRAINT failed_events_pkey;
       adminapi            zitadel    false    226    226    226            �           2606    16421    locks locks_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY adminapi.locks
    ADD CONSTRAINT locks_pkey PRIMARY KEY (view_name, instance_id);
 <   ALTER TABLE ONLY adminapi.locks DROP CONSTRAINT locks_pkey;
       adminapi            zitadel    false    224    224            �           2606    16577    styling2 styling2_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY adminapi.styling2
    ADD CONSTRAINT styling2_pkey PRIMARY KEY (instance_id, aggregate_id, label_policy_state);
 B   ALTER TABLE ONLY adminapi.styling2 DROP CONSTRAINT styling2_pkey;
       adminapi            zitadel    false    244    244    244            �           2606    16443    styling styling_pkey 
   CONSTRAINT        ALTER TABLE ONLY adminapi.styling
    ADD CONSTRAINT styling_pkey PRIMARY KEY (aggregate_id, label_policy_state, instance_id);
 @   ALTER TABLE ONLY adminapi.styling DROP CONSTRAINT styling_pkey;
       adminapi            zitadel    false    227    227    227            �           2606    16531     auth_requests auth_requests_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth.auth_requests
    ADD CONSTRAINT auth_requests_pkey PRIMARY KEY (id, instance_id);
 H   ALTER TABLE ONLY auth.auth_requests DROP CONSTRAINT auth_requests_pkey;
       auth            zitadel    false    239    239            �           2606    16458 (   current_sequences current_sequences_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY auth.current_sequences
    ADD CONSTRAINT current_sequences_pkey PRIMARY KEY (view_name, instance_id);
 P   ALTER TABLE ONLY auth.current_sequences DROP CONSTRAINT current_sequences_pkey;
       auth            zitadel    false    229    229            �           2606    16465     failed_events failed_events_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY auth.failed_events
    ADD CONSTRAINT failed_events_pkey PRIMARY KEY (view_name, failed_sequence, instance_id);
 H   ALTER TABLE ONLY auth.failed_events DROP CONSTRAINT failed_events_pkey;
       auth            zitadel    false    230    230    230            �           2606    16622    idp_configs2 idp_configs2_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY auth.idp_configs2
    ADD CONSTRAINT idp_configs2_pkey PRIMARY KEY (instance_id, idp_config_id);
 F   ALTER TABLE ONLY auth.idp_configs2 DROP CONSTRAINT idp_configs2_pkey;
       auth            zitadel    false    249    249            �           2606    16524    idp_configs idp_configs_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY auth.idp_configs
    ADD CONSTRAINT idp_configs_pkey PRIMARY KEY (idp_config_id, instance_id);
 D   ALTER TABLE ONLY auth.idp_configs DROP CONSTRAINT idp_configs_pkey;
       auth            zitadel    false    238    238            �           2606    16613 "   idp_providers2 idp_providers2_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY auth.idp_providers2
    ADD CONSTRAINT idp_providers2_pkey PRIMARY KEY (instance_id, aggregate_id, idp_config_id);
 J   ALTER TABLE ONLY auth.idp_providers2 DROP CONSTRAINT idp_providers2_pkey;
       auth            zitadel    false    248    248    248            �           2606    16517     idp_providers idp_providers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY auth.idp_providers
    ADD CONSTRAINT idp_providers_pkey PRIMARY KEY (aggregate_id, idp_config_id, instance_id);
 H   ALTER TABLE ONLY auth.idp_providers DROP CONSTRAINT idp_providers_pkey;
       auth            zitadel    false    237    237    237            �           2606    16451    locks locks_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY auth.locks
    ADD CONSTRAINT locks_pkey PRIMARY KEY (view_name, instance_id);
 8   ALTER TABLE ONLY auth.locks DROP CONSTRAINT locks_pkey;
       auth            zitadel    false    228    228            �           2606    16604 .   org_project_mapping2 org_project_mapping2_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY auth.org_project_mapping2
    ADD CONSTRAINT org_project_mapping2_pkey PRIMARY KEY (instance_id, org_id, project_id);
 V   ALTER TABLE ONLY auth.org_project_mapping2 DROP CONSTRAINT org_project_mapping2_pkey;
       auth            zitadel    false    247    247    247            �           2606    16510 ,   org_project_mapping org_project_mapping_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY auth.org_project_mapping
    ADD CONSTRAINT org_project_mapping_pkey PRIMARY KEY (org_id, project_id, instance_id);
 T   ALTER TABLE ONLY auth.org_project_mapping DROP CONSTRAINT org_project_mapping_pkey;
       auth            zitadel    false    236    236    236            �           2606    16502 "   refresh_tokens refresh_tokens_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_pkey PRIMARY KEY (id, instance_id);
 J   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_pkey;
       auth            zitadel    false    235    235            �           2606    16494    tokens tokens_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id, instance_id);
 :   ALTER TABLE ONLY auth.tokens DROP CONSTRAINT tokens_pkey;
       auth            zitadel    false    234    234            �           2606    16595 ,   user_external_idps2 user_external_idps2_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY auth.user_external_idps2
    ADD CONSTRAINT user_external_idps2_pkey PRIMARY KEY (instance_id, external_user_id, idp_config_id);
 T   ALTER TABLE ONLY auth.user_external_idps2 DROP CONSTRAINT user_external_idps2_pkey;
       auth            zitadel    false    246    246    246            �           2606    16486 *   user_external_idps user_external_idps_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY auth.user_external_idps
    ADD CONSTRAINT user_external_idps_pkey PRIMARY KEY (external_user_id, idp_config_id, instance_id);
 R   ALTER TABLE ONLY auth.user_external_idps DROP CONSTRAINT user_external_idps_pkey;
       auth            zitadel    false    233    233    233            �           2606    16479     user_sessions user_sessions_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY auth.user_sessions
    ADD CONSTRAINT user_sessions_pkey PRIMARY KEY (user_agent_id, user_id, instance_id);
 H   ALTER TABLE ONLY auth.user_sessions DROP CONSTRAINT user_sessions_pkey;
       auth            zitadel    false    232    232    232            �           2606    16586    users2 users2_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth.users2
    ADD CONSTRAINT users2_pkey PRIMARY KEY (instance_id, id);
 :   ALTER TABLE ONLY auth.users2 DROP CONSTRAINT users2_pkey;
       auth            zitadel    false    245    245            �           2606    16472    users users_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id, instance_id);
 8   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_pkey;
       auth            zitadel    false    231    231            �           2606    16402    events2 events2_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY eventstore.events2
    ADD CONSTRAINT events2_pkey PRIMARY KEY (instance_id, aggregate_type, aggregate_id, sequence);
 B   ALTER TABLE ONLY eventstore.events2 DROP CONSTRAINT events2_pkey;
    
   eventstore            zitadel    false    221    221    221    221            �           2606    16413 *   unique_constraints unique_constraints_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY eventstore.unique_constraints
    ADD CONSTRAINT unique_constraints_pkey PRIMARY KEY (instance_id, unique_type, unique_field);
 X   ALTER TABLE ONLY eventstore.unique_constraints DROP CONSTRAINT unique_constraints_pkey;
    
   eventstore            zitadel    false    223    223    223            
           2606    16689    actions3 actions3_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY projections.actions3
    ADD CONSTRAINT actions3_pkey PRIMARY KEY (instance_id, id);
 E   ALTER TABLE ONLY projections.actions3 DROP CONSTRAINT actions3_pkey;
       projections            zitadel    false    256    256            ^           2606    17028 (   apps5_api_configs apps5_api_configs_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY projections.apps5_api_configs
    ADD CONSTRAINT apps5_api_configs_pkey PRIMARY KEY (instance_id, app_id);
 W   ALTER TABLE ONLY projections.apps5_api_configs DROP CONSTRAINT apps5_api_configs_pkey;
       projections            zitadel    false    286    286            a           2606    17046 *   apps5_oidc_configs apps5_oidc_configs_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY projections.apps5_oidc_configs
    ADD CONSTRAINT apps5_oidc_configs_pkey PRIMARY KEY (instance_id, app_id);
 Y   ALTER TABLE ONLY projections.apps5_oidc_configs DROP CONSTRAINT apps5_oidc_configs_pkey;
       projections            zitadel    false    287    287            Z           2606    17019    apps5 apps5_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY projections.apps5
    ADD CONSTRAINT apps5_pkey PRIMARY KEY (instance_id, id);
 ?   ALTER TABLE ONLY projections.apps5 DROP CONSTRAINT apps5_pkey;
       projections            zitadel    false    285    285            d           2606    17059 *   apps5_saml_configs apps5_saml_configs_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY projections.apps5_saml_configs
    ADD CONSTRAINT apps5_saml_configs_pkey PRIMARY KEY (instance_id, app_id);
 Y   ALTER TABLE ONLY projections.apps5_saml_configs DROP CONSTRAINT apps5_saml_configs_pkey;
       projections            zitadel    false    288    288            �           2606    17469     auth_requests auth_requests_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY projections.auth_requests
    ADD CONSTRAINT auth_requests_pkey PRIMARY KEY (instance_id, id);
 O   ALTER TABLE ONLY projections.auth_requests DROP CONSTRAINT auth_requests_pkey;
       projections            zitadel    false    327    327            �           2606    17271    authn_keys2 authn_keys2_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY projections.authn_keys2
    ADD CONSTRAINT authn_keys2_pkey PRIMARY KEY (instance_id, id);
 K   ALTER TABLE ONLY projections.authn_keys2 DROP CONSTRAINT authn_keys2_pkey;
       projections            zitadel    false    307    307            �           2606    16546 (   current_sequences current_sequences_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.current_sequences
    ADD CONSTRAINT current_sequences_pkey PRIMARY KEY (projection_name, aggregate_type, instance_id);
 W   ALTER TABLE ONLY projections.current_sequences DROP CONSTRAINT current_sequences_pkey;
       projections            zitadel    false    241    241    241                        2606    16658 "   current_states current_states_pkey 
   CONSTRAINT        ALTER TABLE ONLY projections.current_states
    ADD CONSTRAINT current_states_pkey PRIMARY KEY (projection_name, instance_id);
 Q   ALTER TABLE ONLY projections.current_states DROP CONSTRAINT current_states_pkey;
       projections            zitadel    false    253    253            u           2606    17112     custom_texts2 custom_texts2_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.custom_texts2
    ADD CONSTRAINT custom_texts2_pkey PRIMARY KEY (instance_id, aggregate_id, template, key, language);
 O   ALTER TABLE ONLY projections.custom_texts2 DROP CONSTRAINT custom_texts2_pkey;
       projections            zitadel    false    293    293    293    293    293            �           2606    17452 0   device_authorizations device_authorizations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.device_authorizations
    ADD CONSTRAINT device_authorizations_pkey PRIMARY KEY (instance_id, id);
 _   ALTER TABLE ONLY projections.device_authorizations DROP CONSTRAINT device_authorizations_pkey;
       projections            zitadel    false    325    325            !           2606    16759 &   domain_policies2 domain_policies2_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY projections.domain_policies2
    ADD CONSTRAINT domain_policies2_pkey PRIMARY KEY (instance_id, id);
 U   ALTER TABLE ONLY projections.domain_policies2 DROP CONSTRAINT domain_policies2_pkey;
       projections            zitadel    false    263    263            �           2606    16650 "   failed_events2 failed_events2_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.failed_events2
    ADD CONSTRAINT failed_events2_pkey PRIMARY KEY (projection_name, instance_id, aggregate_type, aggregate_id, failed_sequence);
 Q   ALTER TABLE ONLY projections.failed_events2 DROP CONSTRAINT failed_events2_pkey;
       projections            zitadel    false    252    252    252    252    252            �           2606    16553     failed_events failed_events_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.failed_events
    ADD CONSTRAINT failed_events_pkey PRIMARY KEY (projection_name, failed_sequence, instance_id);
 O   ALTER TABLE ONLY projections.failed_events DROP CONSTRAINT failed_events_pkey;
       projections            zitadel    false    242    242    242                       2606    16699 "   flow_triggers2 flow_triggers2_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.flow_triggers2
    ADD CONSTRAINT flow_triggers2_pkey PRIMARY KEY (instance_id, flow_type, trigger_type, resource_owner, action_id);
 Q   ALTER TABLE ONLY projections.flow_triggers2 DROP CONSTRAINT flow_triggers2_pkey;
       projections            zitadel    false    257    257    257    257    257            k           2606    17083 4   idp_login_policy_links5 idp_login_policy_links5_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.idp_login_policy_links5
    ADD CONSTRAINT idp_login_policy_links5_pkey PRIMARY KEY (instance_id, aggregate_id, idp_id);
 c   ALTER TABLE ONLY projections.idp_login_policy_links5 DROP CONSTRAINT idp_login_policy_links5_pkey;
       projections            zitadel    false    290    290    290            U           2606    16994 .   idp_templates5_apple idp_templates5_apple_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_apple
    ADD CONSTRAINT idp_templates5_apple_pkey PRIMARY KEY (instance_id, idp_id);
 ]   ALTER TABLE ONLY projections.idp_templates5_apple DROP CONSTRAINT idp_templates5_apple_pkey;
       projections            zitadel    false    283    283            G           2606    16910 .   idp_templates5_azure idp_templates5_azure_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_azure
    ADD CONSTRAINT idp_templates5_azure_pkey PRIMARY KEY (instance_id, idp_id);
 ]   ALTER TABLE ONLY projections.idp_templates5_azure DROP CONSTRAINT idp_templates5_azure_pkey;
       projections            zitadel    false    276    276            K           2606    16934 F   idp_templates5_github_enterprise idp_templates5_github_enterprise_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_github_enterprise
    ADD CONSTRAINT idp_templates5_github_enterprise_pkey PRIMARY KEY (instance_id, idp_id);
 u   ALTER TABLE ONLY projections.idp_templates5_github_enterprise DROP CONSTRAINT idp_templates5_github_enterprise_pkey;
       projections            zitadel    false    278    278            I           2606    16922 0   idp_templates5_github idp_templates5_github_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_github
    ADD CONSTRAINT idp_templates5_github_pkey PRIMARY KEY (instance_id, idp_id);
 _   ALTER TABLE ONLY projections.idp_templates5_github DROP CONSTRAINT idp_templates5_github_pkey;
       projections            zitadel    false    277    277            M           2606    16946 0   idp_templates5_gitlab idp_templates5_gitlab_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_gitlab
    ADD CONSTRAINT idp_templates5_gitlab_pkey PRIMARY KEY (instance_id, idp_id);
 _   ALTER TABLE ONLY projections.idp_templates5_gitlab DROP CONSTRAINT idp_templates5_gitlab_pkey;
       projections            zitadel    false    279    279            O           2606    16958 H   idp_templates5_gitlab_self_hosted idp_templates5_gitlab_self_hosted_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_gitlab_self_hosted
    ADD CONSTRAINT idp_templates5_gitlab_self_hosted_pkey PRIMARY KEY (instance_id, idp_id);
 w   ALTER TABLE ONLY projections.idp_templates5_gitlab_self_hosted DROP CONSTRAINT idp_templates5_gitlab_self_hosted_pkey;
       projections            zitadel    false    280    280            Q           2606    16970 0   idp_templates5_google idp_templates5_google_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_google
    ADD CONSTRAINT idp_templates5_google_pkey PRIMARY KEY (instance_id, idp_id);
 _   ALTER TABLE ONLY projections.idp_templates5_google DROP CONSTRAINT idp_templates5_google_pkey;
       projections            zitadel    false    281    281            E           2606    16897 *   idp_templates5_jwt idp_templates5_jwt_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY projections.idp_templates5_jwt
    ADD CONSTRAINT idp_templates5_jwt_pkey PRIMARY KEY (instance_id, idp_id);
 Y   ALTER TABLE ONLY projections.idp_templates5_jwt DROP CONSTRAINT idp_templates5_jwt_pkey;
       projections            zitadel    false    275    275            S           2606    16982 .   idp_templates5_ldap2 idp_templates5_ldap2_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_ldap2
    ADD CONSTRAINT idp_templates5_ldap2_pkey PRIMARY KEY (instance_id, idp_id);
 ]   ALTER TABLE ONLY projections.idp_templates5_ldap2 DROP CONSTRAINT idp_templates5_ldap2_pkey;
       projections            zitadel    false    282    282            A           2606    16872 0   idp_templates5_oauth2 idp_templates5_oauth2_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_oauth2
    ADD CONSTRAINT idp_templates5_oauth2_pkey PRIMARY KEY (instance_id, idp_id);
 _   ALTER TABLE ONLY projections.idp_templates5_oauth2 DROP CONSTRAINT idp_templates5_oauth2_pkey;
       projections            zitadel    false    273    273            C           2606    16885 ,   idp_templates5_oidc idp_templates5_oidc_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_oidc
    ADD CONSTRAINT idp_templates5_oidc_pkey PRIMARY KEY (instance_id, idp_id);
 [   ALTER TABLE ONLY projections.idp_templates5_oidc DROP CONSTRAINT idp_templates5_oidc_pkey;
       projections            zitadel    false    274    274            >           2606    16863 "   idp_templates5 idp_templates5_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY projections.idp_templates5
    ADD CONSTRAINT idp_templates5_pkey PRIMARY KEY (instance_id, id);
 Q   ALTER TABLE ONLY projections.idp_templates5 DROP CONSTRAINT idp_templates5_pkey;
       projections            zitadel    false    272    272            W           2606    17006 ,   idp_templates5_saml idp_templates5_saml_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_saml
    ADD CONSTRAINT idp_templates5_saml_pkey PRIMARY KEY (instance_id, idp_id);
 [   ALTER TABLE ONLY projections.idp_templates5_saml DROP CONSTRAINT idp_templates5_saml_pkey;
       projections            zitadel    false    284    284            g           2606    17073 $   idp_user_links3 idp_user_links3_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.idp_user_links3
    ADD CONSTRAINT idp_user_links3_pkey PRIMARY KEY (instance_id, idp_id, external_user_id);
 S   ALTER TABLE ONLY projections.idp_user_links3 DROP CONSTRAINT idp_user_links3_pkey;
       projections            zitadel    false    289    289    289            ;           2606    16846 &   idps3_jwt_config idps3_jwt_config_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY projections.idps3_jwt_config
    ADD CONSTRAINT idps3_jwt_config_pkey PRIMARY KEY (instance_id, idp_id);
 U   ALTER TABLE ONLY projections.idps3_jwt_config DROP CONSTRAINT idps3_jwt_config_pkey;
       projections            zitadel    false    271    271            9           2606    16834 (   idps3_oidc_config idps3_oidc_config_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY projections.idps3_oidc_config
    ADD CONSTRAINT idps3_oidc_config_pkey PRIMARY KEY (instance_id, idp_id);
 W   ALTER TABLE ONLY projections.idps3_oidc_config DROP CONSTRAINT idps3_oidc_config_pkey;
       projections            zitadel    false    270    270            6           2606    16825    idps3 idps3_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY projections.idps3
    ADD CONSTRAINT idps3_pkey PRIMARY KEY (instance_id, id);
 ?   ALTER TABLE ONLY projections.idps3 DROP CONSTRAINT idps3_pkey;
       projections            zitadel    false    269    269            �           2606    17220 &   instance_domains instance_domains_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY projections.instance_domains
    ADD CONSTRAINT instance_domains_pkey PRIMARY KEY (instance_id, domain);
 U   ALTER TABLE ONLY projections.instance_domains DROP CONSTRAINT instance_domains_pkey;
       projections            zitadel    false    303    303            �           2606    17230 (   instance_members3 instance_members3_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.instance_members3
    ADD CONSTRAINT instance_members3_pkey PRIMARY KEY (instance_id, id, user_id);
 W   ALTER TABLE ONLY projections.instance_members3 DROP CONSTRAINT instance_members3_pkey;
       projections            zitadel    false    304    304    304            �           2606    17335    instances instances_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY projections.instances
    ADD CONSTRAINT instances_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY projections.instances DROP CONSTRAINT instances_pkey;
       projections            zitadel    false    312            �           2606    17422 (   keys4_certificate keys4_certificate_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY projections.keys4_certificate
    ADD CONSTRAINT keys4_certificate_pkey PRIMARY KEY (instance_id, id);
 W   ALTER TABLE ONLY projections.keys4_certificate DROP CONSTRAINT keys4_certificate_pkey;
       projections            zitadel    false    322    322            �           2606    17391    keys4 keys4_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY projections.keys4
    ADD CONSTRAINT keys4_pkey PRIMARY KEY (instance_id, id);
 ?   ALTER TABLE ONLY projections.keys4 DROP CONSTRAINT keys4_pkey;
       projections            zitadel    false    319    319            �           2606    17398     keys4_private keys4_private_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY projections.keys4_private
    ADD CONSTRAINT keys4_private_pkey PRIMARY KEY (instance_id, id);
 O   ALTER TABLE ONLY projections.keys4_private DROP CONSTRAINT keys4_private_pkey;
       projections            zitadel    false    320    320            �           2606    17410    keys4_public keys4_public_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY projections.keys4_public
    ADD CONSTRAINT keys4_public_pkey PRIMARY KEY (instance_id, id);
 M   ALTER TABLE ONLY projections.keys4_public DROP CONSTRAINT keys4_public_pkey;
       projections            zitadel    false    321    321            $           2606    16773 $   label_policies3 label_policies3_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY projections.label_policies3
    ADD CONSTRAINT label_policies3_pkey PRIMARY KEY (instance_id, id, state);
 S   ALTER TABLE ONLY projections.label_policies3 DROP CONSTRAINT label_policies3_pkey;
       projections            zitadel    false    264    264    264            �           2606    17504    limits limits_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY projections.limits
    ADD CONSTRAINT limits_pkey PRIMARY KEY (instance_id, resource_owner);
 A   ALTER TABLE ONLY projections.limits DROP CONSTRAINT limits_pkey;
       projections            zitadel    false    332    332                       2606    16739 (   lockout_policies2 lockout_policies2_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY projections.lockout_policies2
    ADD CONSTRAINT lockout_policies2_pkey PRIMARY KEY (instance_id, id);
 W   ALTER TABLE ONLY projections.lockout_policies2 DROP CONSTRAINT lockout_policies2_pkey;
       projections            zitadel    false    261    261            �           2606    16539    locks locks_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY projections.locks
    ADD CONSTRAINT locks_pkey PRIMARY KEY (projection_name, instance_id);
 ?   ALTER TABLE ONLY projections.locks DROP CONSTRAINT locks_pkey;
       projections            zitadel    false    240    240            �           2606    17184 .   login_names2_domains login_names2_domains_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.login_names2_domains
    ADD CONSTRAINT login_names2_domains_pkey PRIMARY KEY (instance_id, resource_owner, name);
 ]   ALTER TABLE ONLY projections.login_names2_domains DROP CONSTRAINT login_names2_domains_pkey;
       projections            zitadel    false    299    299    299            �           2606    17193 0   login_names2_policies login_names2_policies_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.login_names2_policies
    ADD CONSTRAINT login_names2_policies_pkey PRIMARY KEY (instance_id, resource_owner);
 _   ALTER TABLE ONLY projections.login_names2_policies DROP CONSTRAINT login_names2_policies_pkey;
       projections            zitadel    false    300    300            �           2606    17172 *   login_names2_users login_names2_users_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY projections.login_names2_users
    ADD CONSTRAINT login_names2_users_pkey PRIMARY KEY (instance_id, id);
 Y   ALTER TABLE ONLY projections.login_names2_users DROP CONSTRAINT login_names2_users_pkey;
       projections            zitadel    false    298    298            3           2606    16815 $   login_policies5 login_policies5_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY projections.login_policies5
    ADD CONSTRAINT login_policies5_pkey PRIMARY KEY (instance_id, aggregate_id);
 S   ALTER TABLE ONLY projections.login_policies5 DROP CONSTRAINT login_policies5_pkey;
       projections            zitadel    false    268    268            o           2606    17094 $   mail_templates2 mail_templates2_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY projections.mail_templates2
    ADD CONSTRAINT mail_templates2_pkey PRIMARY KEY (instance_id, aggregate_id);
 S   ALTER TABLE ONLY projections.mail_templates2 DROP CONSTRAINT mail_templates2_pkey;
       projections            zitadel    false    291    291            r           2606    17103 "   message_texts2 message_texts2_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.message_texts2
    ADD CONSTRAINT message_texts2_pkey PRIMARY KEY (instance_id, aggregate_id, type, language);
 Q   ALTER TABLE ONLY projections.message_texts2 DROP CONSTRAINT message_texts2_pkey;
       projections            zitadel    false    292    292    292    292            �           2606    17476    milestones milestones_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY projections.milestones
    ADD CONSTRAINT milestones_pkey PRIMARY KEY (instance_id, type);
 I   ALTER TABLE ONLY projections.milestones DROP CONSTRAINT milestones_pkey;
       projections            zitadel    false    328    328            �           2606    17443 0   notification_policies notification_policies_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.notification_policies
    ADD CONSTRAINT notification_policies_pkey PRIMARY KEY (instance_id, id);
 _   ALTER TABLE ONLY projections.notification_policies DROP CONSTRAINT notification_policies_pkey;
       projections            zitadel    false    324    324            �           2606    17382 2   notification_providers notification_providers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.notification_providers
    ADD CONSTRAINT notification_providers_pkey PRIMARY KEY (instance_id, aggregate_id, provider_type);
 a   ALTER TABLE ONLY projections.notification_providers DROP CONSTRAINT notification_providers_pkey;
       projections            zitadel    false    318    318    318            �           2606    17375 "   oidc_settings2 oidc_settings2_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY projections.oidc_settings2
    ADD CONSTRAINT oidc_settings2_pkey PRIMARY KEY (instance_id, aggregate_id);
 Q   ALTER TABLE ONLY projections.oidc_settings2 DROP CONSTRAINT oidc_settings2_pkey;
       projections            zitadel    false    317    317            0           2606    16804    org_domains2 org_domains2_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY projections.org_domains2
    ADD CONSTRAINT org_domains2_pkey PRIMARY KEY (org_id, domain, instance_id);
 M   ALTER TABLE ONLY projections.org_domains2 DROP CONSTRAINT org_domains2_pkey;
       projections            zitadel    false    267    267    267            �           2606    17209    org_members3 org_members3_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY projections.org_members3
    ADD CONSTRAINT org_members3_pkey PRIMARY KEY (instance_id, org_id, user_id);
 M   ALTER TABLE ONLY projections.org_members3 DROP CONSTRAINT org_members3_pkey;
       projections            zitadel    false    302    302    302                       2606    16677     org_metadata2 org_metadata2_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY projections.org_metadata2
    ADD CONSTRAINT org_metadata2_pkey PRIMARY KEY (instance_id, org_id, key);
 O   ALTER TABLE ONLY projections.org_metadata2 DROP CONSTRAINT org_metadata2_pkey;
       projections            zitadel    false    255    255    255                       2606    16667    orgs1 orgs1_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY projections.orgs1
    ADD CONSTRAINT orgs1_pkey PRIMARY KEY (instance_id, id);
 ?   ALTER TABLE ONLY projections.orgs1 DROP CONSTRAINT orgs1_pkey;
       projections            zitadel    false    254    254                       2606    16729 2   password_age_policies2 password_age_policies2_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.password_age_policies2
    ADD CONSTRAINT password_age_policies2_pkey PRIMARY KEY (instance_id, id);
 a   ALTER TABLE ONLY projections.password_age_policies2 DROP CONSTRAINT password_age_policies2_pkey;
       projections            zitadel    false    260    260                       2606    16719 @   password_complexity_policies2 password_complexity_policies2_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.password_complexity_policies2
    ADD CONSTRAINT password_complexity_policies2_pkey PRIMARY KEY (instance_id, id);
 o   ALTER TABLE ONLY projections.password_complexity_policies2 DROP CONSTRAINT password_complexity_policies2_pkey;
       projections            zitadel    false    259    259            �           2606    17282 4   personal_access_tokens3 personal_access_tokens3_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.personal_access_tokens3
    ADD CONSTRAINT personal_access_tokens3_pkey PRIMARY KEY (instance_id, id);
 c   ALTER TABLE ONLY projections.personal_access_tokens3 DROP CONSTRAINT personal_access_tokens3_pkey;
       projections            zitadel    false    308    308                       2606    16749 (   privacy_policies3 privacy_policies3_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY projections.privacy_policies3
    ADD CONSTRAINT privacy_policies3_pkey PRIMARY KEY (instance_id, id);
 W   ALTER TABLE ONLY projections.privacy_policies3 DROP CONSTRAINT privacy_policies3_pkey;
       projections            zitadel    false    262    262            �           2606    17256 2   project_grant_members3 project_grant_members3_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.project_grant_members3
    ADD CONSTRAINT project_grant_members3_pkey PRIMARY KEY (instance_id, project_id, grant_id, user_id);
 a   ALTER TABLE ONLY projections.project_grant_members3 DROP CONSTRAINT project_grant_members3_pkey;
       projections            zitadel    false    306    306    306    306            )           2606    16783 $   project_grants3 project_grants3_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY projections.project_grants3
    ADD CONSTRAINT project_grants3_pkey PRIMARY KEY (instance_id, grant_id);
 S   ALTER TABLE ONLY projections.project_grants3 DROP CONSTRAINT project_grants3_pkey;
       projections            zitadel    false    265    265            �           2606    17242 &   project_members3 project_members3_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.project_members3
    ADD CONSTRAINT project_members3_pkey PRIMARY KEY (instance_id, project_id, user_id);
 U   ALTER TABLE ONLY projections.project_members3 DROP CONSTRAINT project_members3_pkey;
       projections            zitadel    false    305    305    305            -           2606    16795 "   project_roles3 project_roles3_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.project_roles3
    ADD CONSTRAINT project_roles3_pkey PRIMARY KEY (instance_id, project_id, role_key);
 Q   ALTER TABLE ONLY projections.project_roles3 DROP CONSTRAINT project_roles3_pkey;
       projections            zitadel    false    266    266    266                       2606    16708    projects3 projects3_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY projections.projects3
    ADD CONSTRAINT projects3_pkey PRIMARY KEY (instance_id, id);
 G   ALTER TABLE ONLY projections.projects3 DROP CONSTRAINT projects3_pkey;
       projections            zitadel    false    258    258            �           2606    17497 .   quotas_notifications quotas_notifications_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.quotas_notifications
    ADD CONSTRAINT quotas_notifications_pkey PRIMARY KEY (instance_id, unit, id);
 ]   ALTER TABLE ONLY projections.quotas_notifications DROP CONSTRAINT quotas_notifications_pkey;
       projections            zitadel    false    331    331    331            �           2606    17490 "   quotas_periods quotas_periods_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY projections.quotas_periods
    ADD CONSTRAINT quotas_periods_pkey PRIMARY KEY (instance_id, unit, start);
 Q   ALTER TABLE ONLY projections.quotas_periods DROP CONSTRAINT quotas_periods_pkey;
       projections            zitadel    false    330    330    330            �           2606    17483    quotas quotas_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY projections.quotas
    ADD CONSTRAINT quotas_pkey PRIMARY KEY (instance_id, unit);
 A   ALTER TABLE ONLY projections.quotas DROP CONSTRAINT quotas_pkey;
       projections            zitadel    false    329    329            �           2606    17342 *   secret_generators2 secret_generators2_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.secret_generators2
    ADD CONSTRAINT secret_generators2_pkey PRIMARY KEY (instance_id, generator_type, aggregate_id);
 Y   ALTER TABLE ONLY projections.secret_generators2 DROP CONSTRAINT secret_generators2_pkey;
       projections            zitadel    false    313    313    313            �           2606    17435 (   security_policies security_policies_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY projections.security_policies
    ADD CONSTRAINT security_policies_pkey PRIMARY KEY (instance_id);
 W   ALTER TABLE ONLY projections.security_policies DROP CONSTRAINT security_policies_pkey;
       projections            zitadel    false    323            �           2606    17461    sessions6 sessions6_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY projections.sessions6
    ADD CONSTRAINT sessions6_pkey PRIMARY KEY (instance_id, id);
 G   ALTER TABLE ONLY projections.sessions6 DROP CONSTRAINT sessions6_pkey;
       projections            zitadel    false    326    326            �           2606    17356    sms_configs2 sms_configs2_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY projections.sms_configs2
    ADD CONSTRAINT sms_configs2_pkey PRIMARY KEY (instance_id, id);
 M   ALTER TABLE ONLY projections.sms_configs2 DROP CONSTRAINT sms_configs2_pkey;
       projections            zitadel    false    315    315            �           2606    17363 ,   sms_configs2_twilio sms_configs2_twilio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.sms_configs2_twilio
    ADD CONSTRAINT sms_configs2_twilio_pkey PRIMARY KEY (instance_id, sms_id);
 [   ALTER TABLE ONLY projections.sms_configs2_twilio DROP CONSTRAINT sms_configs2_twilio_pkey;
       projections            zitadel    false    316    316            �           2606    17349     smtp_configs1 smtp_configs1_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY projections.smtp_configs1
    ADD CONSTRAINT smtp_configs1_pkey PRIMARY KEY (instance_id, aggregate_id);
 O   ALTER TABLE ONLY projections.smtp_configs1 DROP CONSTRAINT smtp_configs1_pkey;
       projections            zitadel    false    314    314            �           2606    17320 *   user_auth_methods4 user_auth_methods4_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.user_auth_methods4
    ADD CONSTRAINT user_auth_methods4_pkey PRIMARY KEY (instance_id, user_id, method_type, token_id);
 Y   ALTER TABLE ONLY projections.user_auth_methods4 DROP CONSTRAINT user_auth_methods4_pkey;
       projections            zitadel    false    311    311    311    311            �           2606    17296    user_grants3 user_grants3_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY projections.user_grants3
    ADD CONSTRAINT user_grants3_pkey PRIMARY KEY (instance_id, id);
 M   ALTER TABLE ONLY projections.user_grants3 DROP CONSTRAINT user_grants3_pkey;
       projections            zitadel    false    309    309            �           2606    17310 "   user_metadata4 user_metadata4_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY projections.user_metadata4
    ADD CONSTRAINT user_metadata4_pkey PRIMARY KEY (instance_id, user_id, key);
 Q   ALTER TABLE ONLY projections.user_metadata4 DROP CONSTRAINT user_metadata4_pkey;
       projections            zitadel    false    310    310    310            |           2606    17132     users8_humans users8_humans_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY projections.users8_humans
    ADD CONSTRAINT users8_humans_pkey PRIMARY KEY (instance_id, user_id);
 O   ALTER TABLE ONLY projections.users8_humans DROP CONSTRAINT users8_humans_pkey;
       projections            zitadel    false    295    295            ~           2606    17146 $   users8_machines users8_machines_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY projections.users8_machines
    ADD CONSTRAINT users8_machines_pkey PRIMARY KEY (instance_id, user_id);
 S   ALTER TABLE ONLY projections.users8_machines DROP CONSTRAINT users8_machines_pkey;
       projections            zitadel    false    296    296            �           2606    17159 .   users8_notifications users8_notifications_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY projections.users8_notifications
    ADD CONSTRAINT users8_notifications_pkey PRIMARY KEY (instance_id, user_id);
 ]   ALTER TABLE ONLY projections.users8_notifications DROP CONSTRAINT users8_notifications_pkey;
       projections            zitadel    false    297    297            x           2606    17121    users8 users8_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY projections.users8
    ADD CONSTRAINT users8_pkey PRIMARY KEY (instance_id, id);
 A   ALTER TABLE ONLY projections.users8 DROP CONSTRAINT users8_pkey;
       projections            zitadel    false    294    294            �           2606    16561    assets assets_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY system.assets
    ADD CONSTRAINT assets_pkey PRIMARY KEY (instance_id, resource_owner, name);
 <   ALTER TABLE ONLY system.assets DROP CONSTRAINT assets_pkey;
       system            zitadel    false    243    243    243            �           2606    16393 $   encryption_keys encryption_keys_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY system.encryption_keys
    ADD CONSTRAINT encryption_keys_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY system.encryption_keys DROP CONSTRAINT encryption_keys_pkey;
       system            zitadel    false    220            �           1259    16563 !   current_sequences_instance_id_idx    INDEX     h   CREATE INDEX current_sequences_instance_id_idx ON adminapi.current_sequences USING btree (instance_id);
 7   DROP INDEX adminapi.current_sequences_instance_id_idx;
       adminapi            zitadel    false    225            �           1259    16566    failed_events_instance_id_idx    INDEX     `   CREATE INDEX failed_events_instance_id_idx ON adminapi.failed_events USING btree (instance_id);
 3   DROP INDEX adminapi.failed_events_instance_id_idx;
       adminapi            zitadel    false    226            �           1259    16578    st2_owner_removed_idx    INDEX     U   CREATE INDEX st2_owner_removed_idx ON adminapi.styling2 USING btree (owner_removed);
 +   DROP INDEX adminapi.st2_owner_removed_idx;
       adminapi            zitadel    false    244            �           1259    16532    auth_code_idx    INDEX     E   CREATE INDEX auth_code_idx ON auth.auth_requests USING btree (code);
    DROP INDEX auth.auth_code_idx;
       auth            zitadel    false    239            �           1259    16564 !   current_sequences_instance_id_idx    INDEX     d   CREATE INDEX current_sequences_instance_id_idx ON auth.current_sequences USING btree (instance_id);
 3   DROP INDEX auth.current_sequences_instance_id_idx;
       auth            zitadel    false    229            �           1259    16596    ext_idps2_owner_removed_idx    INDEX     b   CREATE INDEX ext_idps2_owner_removed_idx ON auth.user_external_idps2 USING btree (owner_removed);
 -   DROP INDEX auth.ext_idps2_owner_removed_idx;
       auth            zitadel    false    246            �           1259    16567    failed_events_instance_id_idx    INDEX     \   CREATE INDEX failed_events_instance_id_idx ON auth.failed_events USING btree (instance_id);
 /   DROP INDEX auth.failed_events_instance_id_idx;
       auth            zitadel    false    230            �           1259    16623    idp_conf2_owner_removed_idx    INDEX     [   CREATE INDEX idp_conf2_owner_removed_idx ON auth.idp_configs2 USING btree (owner_removed);
 -   DROP INDEX auth.idp_conf2_owner_removed_idx;
       auth            zitadel    false    249            �           1259    16614    idp_prov2_owner_removed_idx    INDEX     ]   CREATE INDEX idp_prov2_owner_removed_idx ON auth.idp_providers2 USING btree (owner_removed);
 -   DROP INDEX auth.idp_prov2_owner_removed_idx;
       auth            zitadel    false    248            �           1259    16638    inst_app_tkn_idx    INDEX     X   CREATE INDEX inst_app_tkn_idx ON auth.tokens USING btree (instance_id, application_id);
 "   DROP INDEX auth.inst_app_tkn_idx;
       auth            zitadel    false    234    234            �           1259    16637    inst_refresh_tkn_idx    INDEX     ^   CREATE INDEX inst_refresh_tkn_idx ON auth.tokens USING btree (instance_id, refresh_token_id);
 &   DROP INDEX auth.inst_refresh_tkn_idx;
       auth            zitadel    false    234    234            �           1259    16639    inst_ro_tkn_idx    INDEX     W   CREATE INDEX inst_ro_tkn_idx ON auth.tokens USING btree (instance_id, resource_owner);
 !   DROP INDEX auth.inst_ro_tkn_idx;
       auth            zitadel    false    234    234            �           1259    16640    inst_usr_agnt_tkn_idx    INDEX     e   CREATE INDEX inst_usr_agnt_tkn_idx ON auth.tokens USING btree (instance_id, user_id, user_agent_id);
 '   DROP INDEX auth.inst_usr_agnt_tkn_idx;
       auth            zitadel    false    234    234    234            �           1259    16605    org_proj_m2_owner_removed_idx    INDEX     e   CREATE INDEX org_proj_m2_owner_removed_idx ON auth.org_project_mapping2 USING btree (owner_removed);
 /   DROP INDEX auth.org_proj_m2_owner_removed_idx;
       auth            zitadel    false    247            �           1259    16587    u2_owner_removed_idx    INDEX     N   CREATE INDEX u2_owner_removed_idx ON auth.users2 USING btree (owner_removed);
 &   DROP INDEX auth.u2_owner_removed_idx;
       auth            zitadel    false    245            �           1259    16503    unique_client_user_index    INDEX     u   CREATE UNIQUE INDEX unique_client_user_index ON auth.refresh_tokens USING btree (client_id, user_agent_id, user_id);
 *   DROP INDEX auth.unique_client_user_index;
       auth            zitadel    false    235    235    235            �           1259    16403    es_active_instances    INDEX     c   CREATE INDEX es_active_instances ON eventstore.events2 USING btree (created_at DESC, instance_id);
 +   DROP INDEX eventstore.es_active_instances;
    
   eventstore            zitadel    false    221    221            �           1259    16405    es_projection    INDEX     t   CREATE INDEX es_projection ON eventstore.events2 USING btree (instance_id, aggregate_type, event_type, "position");
 %   DROP INDEX eventstore.es_projection;
    
   eventstore            zitadel    false    221    221    221    221            �           1259    16404    es_wm    INDEX     n   CREATE INDEX es_wm ON eventstore.events2 USING btree (aggregate_id, instance_id, aggregate_type, event_type);
    DROP INDEX eventstore.es_wm;
    
   eventstore            zitadel    false    221    221    221    221            �           1259    16636    log_date_desc    INDEX     j   CREATE INDEX log_date_desc ON logstore.execution USING btree (instance_id, log_date DESC) INCLUDE (took);
 #   DROP INDEX logstore.log_date_desc;
       logstore            zitadel    false    251    251    251            �           1259    16630    protocol_date_desc    INDEX     �   CREATE INDEX protocol_date_desc ON logstore.access USING btree (instance_id, protocol, log_date DESC) INCLUDE (request_url, response_status, request_headers);
 (   DROP INDEX logstore.protocol_date_desc;
       logstore            zitadel    false    250    250    250    250    250    250                       1259    16691    actions3_owner_removed_idx    INDEX     ]   CREATE INDEX actions3_owner_removed_idx ON projections.actions3 USING btree (owner_removed);
 3   DROP INDEX projections.actions3_owner_removed_idx;
       projections            zitadel    false    256                       1259    16690    actions3_resource_owner_idx    INDEX     _   CREATE INDEX actions3_resource_owner_idx ON projections.actions3 USING btree (resource_owner);
 4   DROP INDEX projections.actions3_resource_owner_idx;
       projections            zitadel    false    256            \           1259    17034    apps5_api_configs_client_id_idx    INDEX     g   CREATE INDEX apps5_api_configs_client_id_idx ON projections.apps5_api_configs USING btree (client_id);
 8   DROP INDEX projections.apps5_api_configs_client_id_idx;
       projections            zitadel    false    286            _           1259    17052     apps5_oidc_configs_client_id_idx    INDEX     i   CREATE INDEX apps5_oidc_configs_client_id_idx ON projections.apps5_oidc_configs USING btree (client_id);
 9   DROP INDEX projections.apps5_oidc_configs_client_id_idx;
       projections            zitadel    false    287            X           1259    17021    apps5_owner_removed_idx    INDEX     W   CREATE INDEX apps5_owner_removed_idx ON projections.apps5 USING btree (owner_removed);
 0   DROP INDEX projections.apps5_owner_removed_idx;
       projections            zitadel    false    285            [           1259    17020    apps5_project_id_idx    INDEX     Q   CREATE INDEX apps5_project_id_idx ON projections.apps5 USING btree (project_id);
 -   DROP INDEX projections.apps5_project_id_idx;
       projections            zitadel    false    285            b           1259    17065     apps5_saml_configs_entity_id_idx    INDEX     i   CREATE INDEX apps5_saml_configs_entity_id_idx ON projections.apps5_saml_configs USING btree (entity_id);
 9   DROP INDEX projections.apps5_saml_configs_entity_id_idx;
       projections            zitadel    false    288            �           1259    17272    authn_keys2_enabled_idx    INDEX     W   CREATE INDEX authn_keys2_enabled_idx ON projections.authn_keys2 USING btree (enabled);
 0   DROP INDEX projections.authn_keys2_enabled_idx;
       projections            zitadel    false    307            �           1259    17273    authn_keys2_identifier_idx    INDEX     ]   CREATE INDEX authn_keys2_identifier_idx ON projections.authn_keys2 USING btree (identifier);
 3   DROP INDEX projections.authn_keys2_identifier_idx;
       projections            zitadel    false    307            �           1259    17274    authn_keys2_owner_removed_idx    INDEX     c   CREATE INDEX authn_keys2_owner_removed_idx ON projections.authn_keys2 USING btree (owner_removed);
 6   DROP INDEX projections.authn_keys2_owner_removed_idx;
       projections            zitadel    false    307            �           1259    16659    cs_instance_id_idx    INDEX     Y   CREATE INDEX cs_instance_id_idx ON projections.current_states USING btree (instance_id);
 +   DROP INDEX projections.cs_instance_id_idx;
       projections            zitadel    false    253            �           1259    16565 !   current_sequences_instance_id_idx    INDEX     k   CREATE INDEX current_sequences_instance_id_idx ON projections.current_sequences USING btree (instance_id);
 :   DROP INDEX projections.current_sequences_instance_id_idx;
       projections            zitadel    false    241            s           1259    17113    custom_texts2_owner_removed_idx    INDEX     g   CREATE INDEX custom_texts2_owner_removed_idx ON projections.custom_texts2 USING btree (owner_removed);
 8   DROP INDEX projections.custom_texts2_owner_removed_idx;
       projections            zitadel    false    293            �           1259    17454 %   device_authorizations_device_code_idx    INDEX     �   CREATE INDEX device_authorizations_device_code_idx ON projections.device_authorizations USING btree (instance_id, client_id, device_code);
 >   DROP INDEX projections.device_authorizations_device_code_idx;
       projections            zitadel    false    325    325    325            �           1259    17453 #   device_authorizations_user_code_idx    INDEX     |   CREATE INDEX device_authorizations_user_code_idx ON projections.device_authorizations USING btree (instance_id, user_code);
 <   DROP INDEX projections.device_authorizations_user_code_idx;
       projections            zitadel    false    325    325                       1259    16760 "   domain_policies2_owner_removed_idx    INDEX     m   CREATE INDEX domain_policies2_owner_removed_idx ON projections.domain_policies2 USING btree (owner_removed);
 ;   DROP INDEX projections.domain_policies2_owner_removed_idx;
       projections            zitadel    false    263            �           1259    16568    failed_events_instance_id_idx    INDEX     c   CREATE INDEX failed_events_instance_id_idx ON projections.failed_events USING btree (instance_id);
 6   DROP INDEX projections.failed_events_instance_id_idx;
       projections            zitadel    false    242            �           1259    16651    fe2_instance_id_idx    INDEX     Z   CREATE INDEX fe2_instance_id_idx ON projections.failed_events2 USING btree (instance_id);
 ,   DROP INDEX projections.fe2_instance_id_idx;
       projections            zitadel    false    252                       1259    16700     flow_triggers2_owner_removed_idx    INDEX     i   CREATE INDEX flow_triggers2_owner_removed_idx ON projections.flow_triggers2 USING btree (owner_removed);
 9   DROP INDEX projections.flow_triggers2_owner_removed_idx;
       projections            zitadel    false    257            i           1259    17085 )   idp_login_policy_links5_owner_removed_idx    INDEX     {   CREATE INDEX idp_login_policy_links5_owner_removed_idx ON projections.idp_login_policy_links5 USING btree (owner_removed);
 B   DROP INDEX projections.idp_login_policy_links5_owner_removed_idx;
       projections            zitadel    false    290            l           1259    17084 *   idp_login_policy_links5_resource_owner_idx    INDEX     }   CREATE INDEX idp_login_policy_links5_resource_owner_idx ON projections.idp_login_policy_links5 USING btree (resource_owner);
 C   DROP INDEX projections.idp_login_policy_links5_resource_owner_idx;
       projections            zitadel    false    290            <           1259    16865     idp_templates5_owner_removed_idx    INDEX     i   CREATE INDEX idp_templates5_owner_removed_idx ON projections.idp_templates5 USING btree (owner_removed);
 9   DROP INDEX projections.idp_templates5_owner_removed_idx;
       projections            zitadel    false    272            ?           1259    16864 !   idp_templates5_resource_owner_idx    INDEX     k   CREATE INDEX idp_templates5_resource_owner_idx ON projections.idp_templates5 USING btree (resource_owner);
 :   DROP INDEX projections.idp_templates5_resource_owner_idx;
       projections            zitadel    false    272            e           1259    17075 !   idp_user_links3_owner_removed_idx    INDEX     k   CREATE INDEX idp_user_links3_owner_removed_idx ON projections.idp_user_links3 USING btree (owner_removed);
 :   DROP INDEX projections.idp_user_links3_owner_removed_idx;
       projections            zitadel    false    289            h           1259    17074    idp_user_links3_user_id_idx    INDEX     _   CREATE INDEX idp_user_links3_user_id_idx ON projections.idp_user_links3 USING btree (user_id);
 4   DROP INDEX projections.idp_user_links3_user_id_idx;
       projections            zitadel    false    289            4           1259    16827    idps3_owner_removed_idx    INDEX     W   CREATE INDEX idps3_owner_removed_idx ON projections.idps3 USING btree (owner_removed);
 0   DROP INDEX projections.idps3_owner_removed_idx;
       projections            zitadel    false    269            7           1259    16826    idps3_resource_owner_idx    INDEX     Y   CREATE INDEX idps3_resource_owner_idx ON projections.idps3 USING btree (resource_owner);
 1   DROP INDEX projections.idps3_resource_owner_idx;
       projections            zitadel    false    269            �           1259    17221 $   instance_domains_instance_domain_idx    INDEX     �   CREATE INDEX instance_domains_instance_domain_idx ON projections.instance_domains USING btree (domain) INCLUDE (creation_date, change_date, sequence, is_generated, is_primary);
 =   DROP INDEX projections.instance_domains_instance_domain_idx;
       projections            zitadel    false    303    303    303    303    303    303            �           1259    17233 !   instance_members3_im_instance_idx    INDEX     �   CREATE INDEX instance_members3_im_instance_idx ON projections.instance_members3 USING btree (instance_id) INCLUDE (creation_date, change_date, user_owner_removed, roles, sequence, resource_owner, owner_removed);
 :   DROP INDEX projections.instance_members3_im_instance_idx;
       projections            zitadel    false    304    304    304    304    304    304    304    304            �           1259    17231    instance_members3_user_id_idx    INDEX     c   CREATE INDEX instance_members3_user_id_idx ON projections.instance_members3 USING btree (user_id);
 6   DROP INDEX projections.instance_members3_user_id_idx;
       projections            zitadel    false    304            �           1259    17232 (   instance_members3_user_owner_removed_idx    INDEX     y   CREATE INDEX instance_members3_user_owner_removed_idx ON projections.instance_members3 USING btree (user_owner_removed);
 A   DROP INDEX projections.instance_members3_user_owner_removed_idx;
       projections            zitadel    false    304            "           1259    16774 !   label_policies3_owner_removed_idx    INDEX     k   CREATE INDEX label_policies3_owner_removed_idx ON projections.label_policies3 USING btree (owner_removed);
 :   DROP INDEX projections.label_policies3_owner_removed_idx;
       projections            zitadel    false    264                       1259    16740 #   lockout_policies2_owner_removed_idx    INDEX     o   CREATE INDEX lockout_policies2_owner_removed_idx ON projections.lockout_policies2 USING btree (owner_removed);
 <   DROP INDEX projections.lockout_policies2_owner_removed_idx;
       projections            zitadel    false    261            �           1259    17185 &   login_names2_domains_owner_removed_idx    INDEX     u   CREATE INDEX login_names2_domains_owner_removed_idx ON projections.login_names2_domains USING btree (owner_removed);
 ?   DROP INDEX projections.login_names2_domains_owner_removed_idx;
       projections            zitadel    false    299            �           1259    17194 $   login_names2_policies_is_default_idx    INDEX     �   CREATE INDEX login_names2_policies_is_default_idx ON projections.login_names2_policies USING btree (resource_owner, is_default);
 =   DROP INDEX projections.login_names2_policies_is_default_idx;
       projections            zitadel    false    300    300            �           1259    17195 '   login_names2_policies_owner_removed_idx    INDEX     w   CREATE INDEX login_names2_policies_owner_removed_idx ON projections.login_names2_policies USING btree (owner_removed);
 @   DROP INDEX projections.login_names2_policies_owner_removed_idx;
       projections            zitadel    false    300            �           1259    17175 )   login_names2_users_lnu_instance_ro_id_idx    INDEX     �   CREATE INDEX login_names2_users_lnu_instance_ro_id_idx ON projections.login_names2_users USING btree (instance_id, resource_owner, id) INCLUDE (user_name, owner_removed);
 B   DROP INDEX projections.login_names2_users_lnu_instance_ro_id_idx;
       projections            zitadel    false    298    298    298    298    298            �           1259    17174 $   login_names2_users_owner_removed_idx    INDEX     q   CREATE INDEX login_names2_users_owner_removed_idx ON projections.login_names2_users USING btree (owner_removed);
 =   DROP INDEX projections.login_names2_users_owner_removed_idx;
       projections            zitadel    false    298            �           1259    17173 %   login_names2_users_resource_owner_idx    INDEX     s   CREATE INDEX login_names2_users_resource_owner_idx ON projections.login_names2_users USING btree (resource_owner);
 >   DROP INDEX projections.login_names2_users_resource_owner_idx;
       projections            zitadel    false    298            1           1259    16816 !   login_policies5_owner_removed_idx    INDEX     k   CREATE INDEX login_policies5_owner_removed_idx ON projections.login_policies5 USING btree (owner_removed);
 :   DROP INDEX projections.login_policies5_owner_removed_idx;
       projections            zitadel    false    268            m           1259    17095 !   mail_templates2_owner_removed_idx    INDEX     k   CREATE INDEX mail_templates2_owner_removed_idx ON projections.mail_templates2 USING btree (owner_removed);
 :   DROP INDEX projections.mail_templates2_owner_removed_idx;
       projections            zitadel    false    291            p           1259    17104     message_texts2_owner_removed_idx    INDEX     i   CREATE INDEX message_texts2_owner_removed_idx ON projections.message_texts2 USING btree (owner_removed);
 9   DROP INDEX projections.message_texts2_owner_removed_idx;
       projections            zitadel    false    292            .           1259    16805    org_domains2_owner_removed_idx    INDEX     e   CREATE INDEX org_domains2_owner_removed_idx ON projections.org_domains2 USING btree (owner_removed);
 7   DROP INDEX projections.org_domains2_owner_removed_idx;
       projections            zitadel    false    267            �           1259    17213    org_members3_om_instance_idx    INDEX     �   CREATE INDEX org_members3_om_instance_idx ON projections.org_members3 USING btree (instance_id) INCLUDE (creation_date, change_date, user_owner_removed, roles, sequence, resource_owner, owner_removed);
 5   DROP INDEX projections.org_members3_om_instance_idx;
       projections            zitadel    false    302    302    302    302    302    302    302    302            �           1259    17211    org_members3_owner_removed_idx    INDEX     e   CREATE INDEX org_members3_owner_removed_idx ON projections.org_members3 USING btree (owner_removed);
 7   DROP INDEX projections.org_members3_owner_removed_idx;
       projections            zitadel    false    302            �           1259    17210    org_members3_user_id_idx    INDEX     Y   CREATE INDEX org_members3_user_id_idx ON projections.org_members3 USING btree (user_id);
 1   DROP INDEX projections.org_members3_user_id_idx;
       projections            zitadel    false    302            �           1259    17212 #   org_members3_user_owner_removed_idx    INDEX     o   CREATE INDEX org_members3_user_owner_removed_idx ON projections.org_members3 USING btree (user_owner_removed);
 <   DROP INDEX projections.org_members3_user_owner_removed_idx;
       projections            zitadel    false    302                       1259    16678    org_metadata2_owner_removed_idx    INDEX     g   CREATE INDEX org_metadata2_owner_removed_idx ON projections.org_metadata2 USING btree (owner_removed);
 8   DROP INDEX projections.org_metadata2_owner_removed_idx;
       projections            zitadel    false    255                       1259    16668    orgs1_domain_idx    INDEX     Q   CREATE INDEX orgs1_domain_idx ON projections.orgs1 USING btree (primary_domain);
 )   DROP INDEX projections.orgs1_domain_idx;
       projections            zitadel    false    254                       1259    16669    orgs1_name_idx    INDEX     E   CREATE INDEX orgs1_name_idx ON projections.orgs1 USING btree (name);
 '   DROP INDEX projections.orgs1_name_idx;
       projections            zitadel    false    254                       1259    16730 (   password_age_policies2_owner_removed_idx    INDEX     y   CREATE INDEX password_age_policies2_owner_removed_idx ON projections.password_age_policies2 USING btree (owner_removed);
 A   DROP INDEX projections.password_age_policies2_owner_removed_idx;
       projections            zitadel    false    260                       1259    16720 /   password_complexity_policies2_owner_removed_idx    INDEX     �   CREATE INDEX password_complexity_policies2_owner_removed_idx ON projections.password_complexity_policies2 USING btree (owner_removed);
 H   DROP INDEX projections.password_complexity_policies2_owner_removed_idx;
       projections            zitadel    false    259            �           1259    17285 )   personal_access_tokens3_owner_removed_idx    INDEX     {   CREATE INDEX personal_access_tokens3_owner_removed_idx ON projections.personal_access_tokens3 USING btree (owner_removed);
 B   DROP INDEX projections.personal_access_tokens3_owner_removed_idx;
       projections            zitadel    false    308            �           1259    17284 *   personal_access_tokens3_resource_owner_idx    INDEX     }   CREATE INDEX personal_access_tokens3_resource_owner_idx ON projections.personal_access_tokens3 USING btree (resource_owner);
 C   DROP INDEX projections.personal_access_tokens3_resource_owner_idx;
       projections            zitadel    false    308            �           1259    17283 #   personal_access_tokens3_user_id_idx    INDEX     o   CREATE INDEX personal_access_tokens3_user_id_idx ON projections.personal_access_tokens3 USING btree (user_id);
 <   DROP INDEX projections.personal_access_tokens3_user_id_idx;
       projections            zitadel    false    308                       1259    16750 #   privacy_policies3_owner_removed_idx    INDEX     o   CREATE INDEX privacy_policies3_owner_removed_idx ON projections.privacy_policies3 USING btree (owner_removed);
 <   DROP INDEX projections.privacy_policies3_owner_removed_idx;
       projections            zitadel    false    262            �           1259    17260 .   project_grant_members3_granted_org_removed_idx    INDEX     �   CREATE INDEX project_grant_members3_granted_org_removed_idx ON projections.project_grant_members3 USING btree (granted_org_removed);
 G   DROP INDEX projections.project_grant_members3_granted_org_removed_idx;
       projections            zitadel    false    306            �           1259    17258 (   project_grant_members3_owner_removed_idx    INDEX     y   CREATE INDEX project_grant_members3_owner_removed_idx ON projections.project_grant_members3 USING btree (owner_removed);
 A   DROP INDEX projections.project_grant_members3_owner_removed_idx;
       projections            zitadel    false    306            �           1259    17261 '   project_grant_members3_pgm_instance_idx    INDEX     �   CREATE INDEX project_grant_members3_pgm_instance_idx ON projections.project_grant_members3 USING btree (instance_id) INCLUDE (creation_date, change_date, user_owner_removed, roles, sequence, resource_owner, owner_removed, granted_org_removed);
 @   DROP INDEX projections.project_grant_members3_pgm_instance_idx;
       projections            zitadel    false    306    306    306    306    306    306    306    306    306            �           1259    17257 "   project_grant_members3_user_id_idx    INDEX     m   CREATE INDEX project_grant_members3_user_id_idx ON projections.project_grant_members3 USING btree (user_id);
 ;   DROP INDEX projections.project_grant_members3_user_id_idx;
       projections            zitadel    false    306            �           1259    17259 -   project_grant_members3_user_owner_removed_idx    INDEX     �   CREATE INDEX project_grant_members3_user_owner_removed_idx ON projections.project_grant_members3 USING btree (user_owner_removed);
 F   DROP INDEX projections.project_grant_members3_user_owner_removed_idx;
       projections            zitadel    false    306            %           1259    16785    project_grants3_granted_org_idx    INDEX     j   CREATE INDEX project_grants3_granted_org_idx ON projections.project_grants3 USING btree (granted_org_id);
 8   DROP INDEX projections.project_grants3_granted_org_idx;
       projections            zitadel    false    265            &           1259    16787 '   project_grants3_granted_org_removed_idx    INDEX     w   CREATE INDEX project_grants3_granted_org_removed_idx ON projections.project_grants3 USING btree (granted_org_removed);
 @   DROP INDEX projections.project_grants3_granted_org_removed_idx;
       projections            zitadel    false    265            '           1259    16786 !   project_grants3_owner_removed_idx    INDEX     k   CREATE INDEX project_grants3_owner_removed_idx ON projections.project_grants3 USING btree (owner_removed);
 :   DROP INDEX projections.project_grants3_owner_removed_idx;
       projections            zitadel    false    265            *           1259    16784 "   project_grants3_resource_owner_idx    INDEX     m   CREATE INDEX project_grants3_resource_owner_idx ON projections.project_grants3 USING btree (resource_owner);
 ;   DROP INDEX projections.project_grants3_resource_owner_idx;
       projections            zitadel    false    265            �           1259    17244 "   project_members3_owner_removed_idx    INDEX     m   CREATE INDEX project_members3_owner_removed_idx ON projections.project_members3 USING btree (owner_removed);
 ;   DROP INDEX projections.project_members3_owner_removed_idx;
       projections            zitadel    false    305            �           1259    17246     project_members3_pm_instance_idx    INDEX     �   CREATE INDEX project_members3_pm_instance_idx ON projections.project_members3 USING btree (instance_id) INCLUDE (creation_date, change_date, user_owner_removed, roles, sequence, resource_owner, owner_removed);
 9   DROP INDEX projections.project_members3_pm_instance_idx;
       projections            zitadel    false    305    305    305    305    305    305    305    305            �           1259    17243    project_members3_user_id_idx    INDEX     a   CREATE INDEX project_members3_user_id_idx ON projections.project_members3 USING btree (user_id);
 5   DROP INDEX projections.project_members3_user_id_idx;
       projections            zitadel    false    305            �           1259    17245 '   project_members3_user_owner_removed_idx    INDEX     w   CREATE INDEX project_members3_user_owner_removed_idx ON projections.project_members3 USING btree (user_owner_removed);
 @   DROP INDEX projections.project_members3_user_owner_removed_idx;
       projections            zitadel    false    305            +           1259    16796     project_roles3_owner_removed_idx    INDEX     i   CREATE INDEX project_roles3_owner_removed_idx ON projections.project_roles3 USING btree (owner_removed);
 9   DROP INDEX projections.project_roles3_owner_removed_idx;
       projections            zitadel    false    266                       1259    16710    projects3_owner_removed_idx    INDEX     _   CREATE INDEX projects3_owner_removed_idx ON projections.projects3 USING btree (owner_removed);
 4   DROP INDEX projections.projects3_owner_removed_idx;
       projections            zitadel    false    258                       1259    16709    projects3_resource_owner_idx    INDEX     a   CREATE INDEX projects3_resource_owner_idx ON projections.projects3 USING btree (resource_owner);
 5   DROP INDEX projections.projects3_resource_owner_idx;
       projections            zitadel    false    258            �           1259    17462 +   sessions6_user_agent_fingerprint_id_idx_idx    INDEX     {   CREATE INDEX sessions6_user_agent_fingerprint_id_idx_idx ON projections.sessions6 USING btree (user_agent_fingerprint_id);
 D   DROP INDEX projections.sessions6_user_agent_fingerprint_id_idx_idx;
       projections            zitadel    false    326            �           1259    17322 $   user_auth_methods4_owner_removed_idx    INDEX     q   CREATE INDEX user_auth_methods4_owner_removed_idx ON projections.user_auth_methods4 USING btree (owner_removed);
 =   DROP INDEX projections.user_auth_methods4_owner_removed_idx;
       projections            zitadel    false    311            �           1259    17321 %   user_auth_methods4_resource_owner_idx    INDEX     s   CREATE INDEX user_auth_methods4_resource_owner_idx ON projections.user_auth_methods4 USING btree (resource_owner);
 >   DROP INDEX projections.user_auth_methods4_resource_owner_idx;
       projections            zitadel    false    311            �           1259    17302 $   user_grants3_granted_org_removed_idx    INDEX     q   CREATE INDEX user_grants3_granted_org_removed_idx ON projections.user_grants3 USING btree (granted_org_removed);
 =   DROP INDEX projections.user_grants3_granted_org_removed_idx;
       projections            zitadel    false    309            �           1259    17299    user_grants3_owner_removed_idx    INDEX     e   CREATE INDEX user_grants3_owner_removed_idx ON projections.user_grants3 USING btree (owner_removed);
 7   DROP INDEX projections.user_grants3_owner_removed_idx;
       projections            zitadel    false    309            �           1259    17301 &   user_grants3_project_owner_removed_idx    INDEX     u   CREATE INDEX user_grants3_project_owner_removed_idx ON projections.user_grants3 USING btree (project_owner_removed);
 ?   DROP INDEX projections.user_grants3_project_owner_removed_idx;
       projections            zitadel    false    309            �           1259    17298    user_grants3_resource_owner_idx    INDEX     g   CREATE INDEX user_grants3_resource_owner_idx ON projections.user_grants3 USING btree (resource_owner);
 8   DROP INDEX projections.user_grants3_resource_owner_idx;
       projections            zitadel    false    309            �           1259    17297    user_grants3_user_id_idx    INDEX     Y   CREATE INDEX user_grants3_user_id_idx ON projections.user_grants3 USING btree (user_id);
 1   DROP INDEX projections.user_grants3_user_id_idx;
       projections            zitadel    false    309            �           1259    17300 #   user_grants3_user_owner_removed_idx    INDEX     o   CREATE INDEX user_grants3_user_owner_removed_idx ON projections.user_grants3 USING btree (user_owner_removed);
 <   DROP INDEX projections.user_grants3_user_owner_removed_idx;
       projections            zitadel    false    309            �           1259    17312     user_metadata4_owner_removed_idx    INDEX     i   CREATE INDEX user_metadata4_owner_removed_idx ON projections.user_metadata4 USING btree (owner_removed);
 9   DROP INDEX projections.user_metadata4_owner_removed_idx;
       projections            zitadel    false    310            �           1259    17311 !   user_metadata4_resource_owner_idx    INDEX     k   CREATE INDEX user_metadata4_resource_owner_idx ON projections.user_metadata4 USING btree (resource_owner);
 :   DROP INDEX projections.user_metadata4_resource_owner_idx;
       projections            zitadel    false    310            v           1259    17124    users8_owner_removed_idx    INDEX     Y   CREATE INDEX users8_owner_removed_idx ON projections.users8 USING btree (owner_removed);
 1   DROP INDEX projections.users8_owner_removed_idx;
       projections            zitadel    false    294            y           1259    17123    users8_resource_owner_idx    INDEX     [   CREATE INDEX users8_resource_owner_idx ON projections.users8 USING btree (resource_owner);
 2   DROP INDEX projections.users8_resource_owner_idx;
       projections            zitadel    false    294            z           1259    17122    users8_username_idx    INDEX     O   CREATE INDEX users8_username_idx ON projections.users8 USING btree (username);
 ,   DROP INDEX projections.users8_username_idx;
       projections            zitadel    false    294            �           2606    17029 *   apps5_api_configs fk_api_configs_ref_apps5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.apps5_api_configs
    ADD CONSTRAINT fk_api_configs_ref_apps5 FOREIGN KEY (instance_id, app_id) REFERENCES projections.apps5(instance_id, id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY projections.apps5_api_configs DROP CONSTRAINT fk_api_configs_ref_apps5;
       projections          zitadel    false    285    286    286    3930    285            �           2606    16995 0   idp_templates5_apple fk_apple_ref_idp_templates5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_apple
    ADD CONSTRAINT fk_apple_ref_idp_templates5 FOREIGN KEY (instance_id, idp_id) REFERENCES projections.idp_templates5(instance_id, id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY projections.idp_templates5_apple DROP CONSTRAINT fk_apple_ref_idp_templates5;
       projections          zitadel    false    272    272    3902    283    283            �           2606    16911 0   idp_templates5_azure fk_azure_ref_idp_templates5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_azure
    ADD CONSTRAINT fk_azure_ref_idp_templates5 FOREIGN KEY (instance_id, idp_id) REFERENCES projections.idp_templates5(instance_id, id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY projections.idp_templates5_azure DROP CONSTRAINT fk_azure_ref_idp_templates5;
       projections          zitadel    false    3902    276    276    272    272                       2606    17423 *   keys4_certificate fk_certificate_ref_keys4    FK CONSTRAINT     �   ALTER TABLE ONLY projections.keys4_certificate
    ADD CONSTRAINT fk_certificate_ref_keys4 FOREIGN KEY (instance_id, id) REFERENCES projections.keys4(instance_id, id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY projections.keys4_certificate DROP CONSTRAINT fk_certificate_ref_keys4;
       projections          zitadel    false    4049    319    322    319    322            �           2606    16935 H   idp_templates5_github_enterprise fk_github_enterprise_ref_idp_templates5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_github_enterprise
    ADD CONSTRAINT fk_github_enterprise_ref_idp_templates5 FOREIGN KEY (instance_id, idp_id) REFERENCES projections.idp_templates5(instance_id, id) ON DELETE CASCADE;
 w   ALTER TABLE ONLY projections.idp_templates5_github_enterprise DROP CONSTRAINT fk_github_enterprise_ref_idp_templates5;
       projections          zitadel    false    278    3902    272    272    278            �           2606    16923 2   idp_templates5_github fk_github_ref_idp_templates5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_github
    ADD CONSTRAINT fk_github_ref_idp_templates5 FOREIGN KEY (instance_id, idp_id) REFERENCES projections.idp_templates5(instance_id, id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY projections.idp_templates5_github DROP CONSTRAINT fk_github_ref_idp_templates5;
       projections          zitadel    false    3902    277    277    272    272            �           2606    16947 2   idp_templates5_gitlab fk_gitlab_ref_idp_templates5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_gitlab
    ADD CONSTRAINT fk_gitlab_ref_idp_templates5 FOREIGN KEY (instance_id, idp_id) REFERENCES projections.idp_templates5(instance_id, id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY projections.idp_templates5_gitlab DROP CONSTRAINT fk_gitlab_ref_idp_templates5;
       projections          zitadel    false    279    272    272    3902    279            �           2606    16959 J   idp_templates5_gitlab_self_hosted fk_gitlab_self_hosted_ref_idp_templates5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_gitlab_self_hosted
    ADD CONSTRAINT fk_gitlab_self_hosted_ref_idp_templates5 FOREIGN KEY (instance_id, idp_id) REFERENCES projections.idp_templates5(instance_id, id) ON DELETE CASCADE;
 y   ALTER TABLE ONLY projections.idp_templates5_gitlab_self_hosted DROP CONSTRAINT fk_gitlab_self_hosted_ref_idp_templates5;
       projections          zitadel    false    280    3902    280    272    272            �           2606    16971 2   idp_templates5_google fk_google_ref_idp_templates5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_google
    ADD CONSTRAINT fk_google_ref_idp_templates5 FOREIGN KEY (instance_id, idp_id) REFERENCES projections.idp_templates5(instance_id, id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY projections.idp_templates5_google DROP CONSTRAINT fk_google_ref_idp_templates5;
       projections          zitadel    false    281    281    272    272    3902                        2606    17133 "   users8_humans fk_humans_ref_users8    FK CONSTRAINT     �   ALTER TABLE ONLY projections.users8_humans
    ADD CONSTRAINT fk_humans_ref_users8 FOREIGN KEY (instance_id, user_id) REFERENCES projections.users8(instance_id, id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY projections.users8_humans DROP CONSTRAINT fk_humans_ref_users8;
       projections          zitadel    false    295    295    3960    294    294            �           2606    16847 (   idps3_jwt_config fk_jwt_config_ref_idps3    FK CONSTRAINT     �   ALTER TABLE ONLY projections.idps3_jwt_config
    ADD CONSTRAINT fk_jwt_config_ref_idps3 FOREIGN KEY (instance_id, idp_id) REFERENCES projections.idps3(instance_id, id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY projections.idps3_jwt_config DROP CONSTRAINT fk_jwt_config_ref_idps3;
       projections          zitadel    false    269    3894    269    271    271            �           2606    16898 ,   idp_templates5_jwt fk_jwt_ref_idp_templates5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_jwt
    ADD CONSTRAINT fk_jwt_ref_idp_templates5 FOREIGN KEY (instance_id, idp_id) REFERENCES projections.idp_templates5(instance_id, id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY projections.idp_templates5_jwt DROP CONSTRAINT fk_jwt_ref_idp_templates5;
       projections          zitadel    false    272    275    275    3902    272            �           2606    16983 0   idp_templates5_ldap2 fk_ldap2_ref_idp_templates5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_ldap2
    ADD CONSTRAINT fk_ldap2_ref_idp_templates5 FOREIGN KEY (instance_id, idp_id) REFERENCES projections.idp_templates5(instance_id, id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY projections.idp_templates5_ldap2 DROP CONSTRAINT fk_ldap2_ref_idp_templates5;
       projections          zitadel    false    272    3902    282    282    272                       2606    17147 &   users8_machines fk_machines_ref_users8    FK CONSTRAINT     �   ALTER TABLE ONLY projections.users8_machines
    ADD CONSTRAINT fk_machines_ref_users8 FOREIGN KEY (instance_id, user_id) REFERENCES projections.users8(instance_id, id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY projections.users8_machines DROP CONSTRAINT fk_machines_ref_users8;
       projections          zitadel    false    296    294    294    3960    296                       2606    17160 0   users8_notifications fk_notifications_ref_users8    FK CONSTRAINT     �   ALTER TABLE ONLY projections.users8_notifications
    ADD CONSTRAINT fk_notifications_ref_users8 FOREIGN KEY (instance_id, user_id) REFERENCES projections.users8(instance_id, id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY projections.users8_notifications DROP CONSTRAINT fk_notifications_ref_users8;
       projections          zitadel    false    297    297    3960    294    294            �           2606    16873 2   idp_templates5_oauth2 fk_oauth2_ref_idp_templates5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_oauth2
    ADD CONSTRAINT fk_oauth2_ref_idp_templates5 FOREIGN KEY (instance_id, idp_id) REFERENCES projections.idp_templates5(instance_id, id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY projections.idp_templates5_oauth2 DROP CONSTRAINT fk_oauth2_ref_idp_templates5;
       projections          zitadel    false    273    273    272    272    3902            �           2606    16835 *   idps3_oidc_config fk_oidc_config_ref_idps3    FK CONSTRAINT     �   ALTER TABLE ONLY projections.idps3_oidc_config
    ADD CONSTRAINT fk_oidc_config_ref_idps3 FOREIGN KEY (instance_id, idp_id) REFERENCES projections.idps3(instance_id, id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY projections.idps3_oidc_config DROP CONSTRAINT fk_oidc_config_ref_idps3;
       projections          zitadel    false    270    269    269    3894    270            �           2606    17047 ,   apps5_oidc_configs fk_oidc_configs_ref_apps5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.apps5_oidc_configs
    ADD CONSTRAINT fk_oidc_configs_ref_apps5 FOREIGN KEY (instance_id, app_id) REFERENCES projections.apps5(instance_id, id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY projections.apps5_oidc_configs DROP CONSTRAINT fk_oidc_configs_ref_apps5;
       projections          zitadel    false    287    285    3930    287    285            �           2606    16886 .   idp_templates5_oidc fk_oidc_ref_idp_templates5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_oidc
    ADD CONSTRAINT fk_oidc_ref_idp_templates5 FOREIGN KEY (instance_id, idp_id) REFERENCES projections.idp_templates5(instance_id, id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY projections.idp_templates5_oidc DROP CONSTRAINT fk_oidc_ref_idp_templates5;
       projections          zitadel    false    274    274    272    272    3902                       2606    17399 "   keys4_private fk_private_ref_keys4    FK CONSTRAINT     �   ALTER TABLE ONLY projections.keys4_private
    ADD CONSTRAINT fk_private_ref_keys4 FOREIGN KEY (instance_id, id) REFERENCES projections.keys4(instance_id, id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY projections.keys4_private DROP CONSTRAINT fk_private_ref_keys4;
       projections          zitadel    false    4049    319    319    320    320                       2606    17411     keys4_public fk_public_ref_keys4    FK CONSTRAINT     �   ALTER TABLE ONLY projections.keys4_public
    ADD CONSTRAINT fk_public_ref_keys4 FOREIGN KEY (instance_id, id) REFERENCES projections.keys4(instance_id, id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY projections.keys4_public DROP CONSTRAINT fk_public_ref_keys4;
       projections          zitadel    false    319    321    321    319    4049            �           2606    17060 ,   apps5_saml_configs fk_saml_configs_ref_apps5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.apps5_saml_configs
    ADD CONSTRAINT fk_saml_configs_ref_apps5 FOREIGN KEY (instance_id, app_id) REFERENCES projections.apps5(instance_id, id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY projections.apps5_saml_configs DROP CONSTRAINT fk_saml_configs_ref_apps5;
       projections          zitadel    false    288    285    285    3930    288            �           2606    17007 .   idp_templates5_saml fk_saml_ref_idp_templates5    FK CONSTRAINT     �   ALTER TABLE ONLY projections.idp_templates5_saml
    ADD CONSTRAINT fk_saml_ref_idp_templates5 FOREIGN KEY (instance_id, idp_id) REFERENCES projections.idp_templates5(instance_id, id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY projections.idp_templates5_saml DROP CONSTRAINT fk_saml_ref_idp_templates5;
       projections          zitadel    false    284    272    284    272    3902                       2606    17364 .   sms_configs2_twilio fk_twilio_ref_sms_configs2    FK CONSTRAINT     �   ALTER TABLE ONLY projections.sms_configs2_twilio
    ADD CONSTRAINT fk_twilio_ref_sms_configs2 FOREIGN KEY (instance_id, sms_id) REFERENCES projections.sms_configs2(instance_id, id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY projections.sms_configs2_twilio DROP CONSTRAINT fk_twilio_ref_sms_configs2;
       projections          zitadel    false    4041    316    316    315    315            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   |   x�����0kj� *�S�$ϒ&���G��6R�/��8$s�5�

{�D`�*X�<�솝us��0Y� ����D��F(�M�9E�Pg=�]D
�����c�M���z�P��,���s!\qXI�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �     x���Mn�0���)�7E�_���	z6Q1R$HP U*��5�O#�������=#��!�	�W���#������p"� z��?znb �PN�`(jQ���7˼�A0``}j)Dӻb�y�)��]��m��e��U��u�4���wa�X�߄�;R	�$2	h8�^��c��$�'�;�Vωx���h���:���^S�D2/�:��+�0�;w-R��Ɓ\,�܅`��$�}y�'��Х���6�t��!mr)4�f�y����wy8��ga?�}1������1      �      x������ � �      �      x������ � �      �   �   x��P�
�@��"�ܱ��{�T�,��&�@b
S����&J���egr�`�0��9�u�L�P��R����e�>��R/j#Ĉ��gwɅ�z�}Y]SVm}[O�6ݹl�ݽ��� 4#2�|�Y���;��>+�Ŀ������>Y���[O      �      x������ � �      �      x���[�춑.���+�~����2OcI���$[[r�b&ND���E7�l��n���?��H0!7O��	��/? �
�$@"�Q�q��i'Q���w�����R�K�#����8p3?��]�߱R���^����D/�M3�u�O�?�������knO����A���U����P5���4]��(M�`�B$�����N�����o�����O������~85W���K������|���.�k^���o�)�}�dIx~�ƙJ����Y�dilv��np���b�F����s��S6��� ry�,?�Kك�O��Z��9!e��o*�%��-l��o�M����������b���Z��_E-��8/=���ֈ��<|?��"�7�G��4�2�1��r/%>�bR�x|��������ȇ���I�����YS�s���Xv�S[��⚟.e]l��8�?v�$�/[��4HS��F���V�_�9m����*�O��Ji�C�D� �93��+�����v-�Ksn��,���UC�d|�/�M�Q�f6i��f����-O�o��謁6�Ʃ�7�E���ԑ���PM����(�h�Ź���P֏�׶C쇱{���t��a��젱[젚Y~�y�ޏ���^�-��Zy *dYhe]�墇��Mv�m���K���M{=ԅ9��o���0�D���I�r��⑩f���6?w�C���P����S8��F((4Xg��<3C�S�<�UO/u~-����0������27H�^��n��jf�9+O���o����*:�nJ�vZ�0�Z�"�`UÙ5�l���~-�^����`wx(�|u�ei��9��A%����éf���g�KT�ߊ���<g��F3x
S���B�u�Z����z��M����0����Z�;�4�B�1���f6߭-����2zn
0~�Fj偨���ʺܙ��%�j��s��ҷ�kS������~hڧ�n���#�����$	�0�YDc�XD5�����[s��OM��M\[����		�(���:�jn�'�K���qݡ��p��q�['���Lv�uT3���)o˼�n��m~�`m!��������3��|�̧��e}*_���,0�4�>D
�T��iƙ�;�q�^*�~�lz3�P�Z�E��_a�.`d��Ȩ`�a�r���&�L�G��|�����s�4�]\,]/�����4��j��b3���s�t���O��h�w���V:����B+�rg*�s���������%o��h�K���;�x~�A���ز�@�-�XZY~�/�Cqʏ��/��hm��`�jF t@g�+�$�9;�i�q(���M�����G�+n��b���s~��s�����`2k��<�T�X���O���S��-oϷ��_��on�.k?���!o2|���f2��b2�̶�S���.��Y�������P%� �rΌ���!����ֺ����R�ۉW?�'S�%��Fc��G5�7U�O��-�����9]ruV2f�Y�Y�N������̢K?���9yӾ�{���5\ސYÊu���-�T�lkzM[܏?� #���<���Q!�B+�rg,_�Љ���܄�T�O0��g�`����KL����\��a?n
����|��_hS(�����Ai�CՄA�sF���<�e/y[���;ر�x��z�[v��If���:�����:��@��䣼^��J��Һ�J20�g�XI�u�E��n��������S��]���������dI�Z�Y	�Ō����|{)��ha�.���	�
V*',l�Ό�7�3̧��k�[��t�l¼�M3暼�� `Q��4v��T3���+a��V>��VG��tVU3��8#x��W�s���f�������0�X��?�O��?���$��ua��p�{��e=r�z:M�`�� �r΄�4��x�]��}�/��{���ōH�$p����-�Qͬ�9������or��i�CՄA�sFt�%q���m�74M�e������Ҁ,�^�2)�i4v�iT3��W�N���h{�)f|<�S8��F((4Xg�u?��?��}��b������ HY'!8x08$�@�~�Nz3�����u)����_�nJOϬa
���Y L���3�n��[=�+�w������{Y�x���Bp��M-/a�O5����oeW��ǿ��J��l�&h0T�HD9G"�[A5�~�'�?]��T�t�������Cp�Ȼ��ri���f��زh���Ms�
�#fVgu0P5#: �3���Bt�[�����R��3�(Kb[da��D5��3E{Ώ�^��o�����Zy *dYhe]��\ ׵́@M]|�O�?�Ly����.6�$�V�o��n��jf]lh��y!H��"��@TȲ�ʺ|Z�)���i�B�ۦ����~�Z���=�N8a��A5�-s?Uyq��x��ӳx'�Y�&4A��J"A��%t*�|j���b��<ܠ��|'�a�ua>�Y!<�aZ��t���Z�vZ��3L ��oO�a��ݔ0;�fS0�Վa
V5%8a���Y�[U�E�?�2��ġ�Ʃ�/���#���f�Y���9��,��f�:df��&h0TMq>QΙP��T�䥁}��S{X(�� 
���
A�%��B��B������/�CQU���cX�)Y�iU�k��@��Ug\q�g�,yh�Ϋks.v	R���0�|6�!<D0��,�a��M5�����=�s9�㞞�]=B4�&$��3�O�P�ӛE��vp�C?L�,������M�x�n1�jf�����;���z�ܪ�|���� <�TNX��?t��̧̛��/E_�|w���ҍ"���������;K�-6S�l���|?����ØJ�g13saPͰ ��"q�p����v
��O�+O{|��$�}7�#�Ce�y���-��Y�`j�t�3.��en�m�TqЛcQ��&u�b��Ʃ�s��D�Z���}Q������� �S>�1�Il	�!��-�7���;^�+O2�G�\h�N4�$QΙѵ�S�y6�k���
�vI�|uc>�1:��a[Bwtr�u�V����+������6���Ҡ5��XJJ挥S��4̑ ע�|��8���KC>,1:��-�W�t��Ⱥ$s����L����bna���:��B�u��VC����T��਽�%Q��~ʎ��!��(�8���b'��vJ�����s	=����-ũ�7�E���ԑ�C74=���v��X���,�iW�f~`U4v�T3�*�7>���{.q�_��:�N4� 	�(�(��k�yvh1~��G� ��0�萆�}PW��,���uq?����<aħ���O�S8��$���+��2�/�D� a���ۻ�ˇF�,�R6ي�n��jf����?ڼ�q�L��H�<PZY�;s9��C��M��m�jS�:�d�e>��"�^��e7�����̚�������#�dT�!�ҷ�
V*',l�Ό+�ͧ�;i�n6�YD�%eE|�3�;H�-&S�l��ע�iݷm�ٝ�	d�/	M�`�� �r΄�� �y}��1{�������">��G��\�n1�jf�9�����3μ񮁵�tR+D��V���T�/�&�*��z�$��~{��Q
�mvP�3,��'��K�V:}{����t�cW��;{�����I$�"�����~'��ec��x�ԂE�z���q�i�|�a�9�K%�n��jf�9��w���(�&�:�EW��A�UV��Q-%b%Y�qtI������~�S+�`}�o#pa`ɂ��lia�ń��mU���7y�6oL�4�̢tVU�@�0���?���q�z�� �����u�%�aZ>����A�fV�|�#�dt�5�9�:M�`��� �rΈ�:��������O�{b�X/Mx�xIm���-�Qͬs������K�����R��PKIɜ����0.�=��r���=^��OaR䱩����"��a�t�jf�9�%}�?=��{��`m�����J���    M�Q��HO�)K�:����K�ޙ(b��� � Ldlf��-fS�lC�%�K���p���9/��b��`X���j8Jз�tg>k~~�����;��L0�>��q ��n��n��m[����������b\^]����U��d`T�����8��E��Y=qyOL�T�rH!� H�x�Q<˲�Nn����U
Ӓ�E����REj偨�e��u�3��еM+���hw9�T䆁k�2?	laք�b��:��g~����\�=�v5�Mtu���P%� �rΌ�Kg<�x�O��850����6�w��˲4N\��p6J."�؈����̚�3�g{��i�o���q��*+���^$b%Y�qf���ҭ�x.�����0�/{,��M� g�7��1�oa�P5����λ+�F�GӾ�sH��tO�`�����`�	�0���Y3j��[��[��a*��u+�C�d���0a��I5�e�����mq�1����|:����A t@grBKtNAp�M�xu?L�4e����ȏ|�ڏNn1��ʖ�����=~.�����&�Y�k��@��UG	�8h��5��1��m�O�|�f	^�಩O�C����|a�O5�L��+�/�mx,E�ܡ�S8��$����~���{ ���8���x��l������o[�#�C�f�׬��E}�;&;=�$�0/�Q���J刅�M�Yp�ǇͧL����Wx�J����'^�d)x�o�,�3�Va�XM5�'�(d����f���sA$l�Z�k��@��Ug<\eb�Y��Q|�!��)�V�%��jp������x�����f�oc����>~,1I�)a��fS0���a
V5�Y ����6��^�
��],����n"o9��&�}_&��r��uɰlq�)o�q;J��b�N4�&$��3�<�K���r�<���4��)�&�pd���[�v�iT3{��?8߷�%��T�f3��<���n��B�u&ؾ�Y"��2��.i|��?t��ȍC����Җ=��[L���LU���y��Y
0F�H�<�,��.w�r���mN5\�a��n��D!^��.Nd��O=��a��B5����4m[t��{�+���Ai�CՄA�sF$����U�) �o,&���1(e�$�C�$�O�"��fieKzLN���K2��wd�TqЛ�E������?q[W�3G��nU_�b���G ㉏iOW�@���v��f�� me_�(������uĮ<(VU3��8#���'��o|!v����e��7���.���d��D5���WM{��j^�l:�Nw�4A��jD� �9:a�`�yܙ]f�;�A{Q2wx�~��g�V���f� q�?�.x�BL`�Fj偨�e��u�3�[�m�ڦM�O�R��?&��>��]�[_znd7�-�XZ�Z���Ƥ�SJ+2I�M�`��� �rS��g<�G5�5m:���wL��y\�ٝ��l.f��b#��>e�k��y+�b��P3O�`�����`��q�4�F�y��P�����=��0̲&.뉿��$�2�J(��b*���'���ǟa
q{.�S��W6*xX���0��;3.���3��xn8���q����xM�l�e.�8�c-�l����?����So2:�0Y��
V*����O��O�/&�c��n�2w�A��k�b��b��қ�v]��c�5Ļ!`�^�
V*',l�ΌOx6�|
��{}�c�̋"?�"?X��;�xs�ebD�-fS�lK��x��W-�	d�	M�`��� �rΈΘ��j����5���"?�`ں^6��^zX�)��b��_wn��˭;��|�(~_��{��*+����%b%Y�qI��>�'�!Cŧӛ`���?~a
7b������E�&�ł�ٿ����>7�	�7t�4A��j��� �9#*oЩT�x|U���Oy}�t���H�Į�%���N�w +�e�E�-FRͬ����&�D�]ǜ�Nx
S��;�E)����N�O���SY��<B�����M�J٩��|Jt��b)���
>�s���(f"])O�`����`�P���G7��i��ө�1
3)�f�R7eSٚ�3�f�壦}(��K<N�_��YF2*xX��0��;�����ib\�E�Oz�$�qs�3������������f����j�E�7�uA�S̜�<���n��B�uF���{���0�)���R՚����� ��OS��F�d��H5�eI�J�?�m��E �-����	�(�L���S��%�����@��Eq�s?Ⱦ1{���#��f�C�mNU�w8��*`�$<�T�X��	�521}ʜ�Nm	��ك�U���M�6�2?L,���b1�̾��?���;E1����:��B�u�+��9}jY�aj����%��i���w�>��*��n���F�3�x���NU���B�	u���@Ռ@�0���L���2ޫL;D�L��G��K�8�-���b�̶,��-�x���,C,�R���$����@��
�d�������Om��uI��|6�!8�ؐ7�N~�Z+[DC^w�o��*3��S�Ao�E�����yFB��e��K�쒣!I�0p�m�{߃q� 5�-�����e�����[�5_��D1�3Ky
S���L���e/OY�w�����Fv� 80�gD���fV=���X�O�I�9���T�@A��:ޣF�O�O햨��c��(���2���3-��C�����e��P�� ���*�A�sf��$�z]�-�<]�X���y&dQ� ����B1�-fQͬǕ��S��Ŝ��pG�i+�6�)iM�,/u�OY���fvJU/fZ����w���g�4v��T3���[ރ{*o��ѹz7k��<�TNX��?���S��m�6�s��?��F��0�O˾�b�[��[���Q����cq�NF1��!���������`�+�|��o(�>��u��������h}��nx�<�Z�7a?n2��-E�ٶ���wx�(fDQ���T7AA��:|�T(�~��F��-�{����Asʜ�
��mU['�jie}�n0|����Tw|��z�UV��Q=K�J���,�n<]d>Q����\p(O{,��f����!�C���d��P5�-zwoyun�8���bfٛ���	

֙��2����{�W�$�J�4��?�L+<DIZ����b���Ձo��|����+Ĺ�������a��t�5�s(�4��c��؅���.���$��d���"K+kz�{U�o�[���.�;�`�a�r���&�,�~��c>e~Ԋ�ן�^FQ����xd�fx�:Vi���f���c�|���o�k˧K/�Y1�瘭�Jˣ�T�R���I+<���K�)ZӞ0
i7C'^�%\��Itp�(�4��֛�X����K��94���h�V���,��.wd�D7Q�6#_��V|��g�w���zQG��f�u~����&����->�*�����;�#&:Ogu0P5#: �3��,�>��������]p��c�W�o*���1��d�XD5�:�w萿`�t��9���Q!�B+�rg,��2�Ni[ސ��.x��Q�Q�\A&;.�#[P�Nn����j����CߌS���	s!<������`O�`3�/�X�h�i.H�0�u!ٟ�ƾ%���[�����jveq�GYU�]>�'6u���T7BA��:3|,�3����Q���0����{>0:����汄�b"�̶�^�mu?~�e_����3BfM������L02����d�$�ti���>���~��3� �R����{| y�Y�8�~ܢz3�M?�q����`�1w���F��8�0���[<�K<�ڿ���,u݄]V��sc�q4v�qT3�Sw-���c�VH�nA�S�XT���HP=�N��9ߤ	ӡ�h�D�;�4i�����Ƈ �ڴ�Ec��E5���=9�$#�U��#N��,
UԤ�,�.ҥ[��V�aY5�B����C�%~jY�#�;�f��#��q?�ǫk|E��    {Kh+�6yg��]�7�)�wm�+��0�>sa���8����G�-FSͬ��E���b<\�#n'^cu0P5ƙ�	㈉�ѡ�IR�_1;�+�a�������z0��xv��b��
yŠ�o��4��Cj�V�
YZY�;c��Eo]ۜ�a��0s�M��2ܾ�L�����=�jY�k��"3j�M�����		�(猨�Ǥ��f���YT���cC"�`$�#�%9x`7�Qf�~�4z3������SM	7�1j��a�vS����Z+�QY=��_\��e�B7�b�I�.{������[̧���J�ۢx�7�tĜ��YT��3m�I�����s��/U�{F�m�B(K�a�XE5��>e{���W>s�{N�9�*jRg,��]4=�����/ŧ���]|�(s��2~W'9Dq%��a��A5�m�70Ǹ��Z\�����:���A���N٧S�=�W�����lHqr��lVu��b��������o0ް�^q��0��Y�k��@��Ugt�F��Z#��u�yM`^z�`)|�����n1�jf�oq-�@�\K\U[����U��d`T/����8�D�j�'��Y�0!x��]Mn R�W��7���v?R�G������"������		�(��w��)��m�^^��(�\>N3��Rz�R�m���-�Q�l>\ѶEU�#�����VUV��Q=I�J��������뭞8��85U�?���ÊC]�	k��u�If���Ŋ��-���0�]%Z3%�����)�jg�0�K���Gy�����[�$���L� r݈?��ԍl���x��-��;����Rd�Xj)ZS,���d�,ɓ�J�<W"�{�;8H�!�)=`v![�i�n�~���s~��J9p�*��N��O�`��PPh���~���Z���E�$/���Mɂ4�}>_{zH��X?s��T�����|i��bĻ��f"��fB��q/��\S^_�S�x�v�Y�^>W�1��!�̶�J�-�Q�l�P��6���]���	d� B4�f$��#�7��f��:���O�z2�Ӷg7�������ћY9���s�Vx���N���Q�e��u�3�/�M�6m�����򞀻�g	��=;�A�G��:�n��jfK4]T=� �I2Mh�CՈA���`��<��CVw03���da�a�=o� �"[�G�n1�jf�*j����ߊK-s>�lQ���T7AA��:�p{��?_k�|�vp�2��.sS�Lsv��$e��1�-vRͬ9��;&~m��gs�	O�`�C((4XG��$s��{}��~��Ja��l�� -���n��jf�`��n)����w����`�j$: �3��7�S����!�arQp�C�o��n��jf[(��D�����<�|�@f�����	�(�L�[wT�r@��>��i�N���B������,�Q�n��jf��.���o�mp�b.n����

֙�)5��H��>��D��<�ϝF�܃�%ꊲ6if�� >��=}n:x�4��f��Zy *Ʋ�ʺܑeyc��M�md.��|���=����5B.�
z�E���n1�jf�d=T�?e1&6�V+�`�a�r���&��8����q�zʽ����5?���Эa�D?��[�f�[%��f�p&�#�N	���@�H t@gWL�EtN��Z���^Z�ɓ\a��m��C/�$D����f�}����]�&���+N��,
UԤ�,>w�ϭ=C��83��ܘM`�I,C>e�@5��o�&�%��
p����b,���Y~�y�5mr4�Ԁ����M����EY�DQ��cJc�� �� ��5p�?C�?7��w\�_Ej偨���ʺܙʗ\��U��|��iC|*����ߙ��挛qD<���a`� ���͡7����c��LǼ ����Q!�B+�rg,_Ky��6:�oխ��}�W���(�x[��X� ��[�f�drE��4�N �H����	�(7��x�!�<m&�x3T�p�	�z�kI?K�-�Q�liȊ��h�����)fҐQ���T7AA��:�kLCf<_^� 0�6E?x�ˏ�#��b'-v�,�(��N��m�x�����>0��!3�$4A��jB� �9#�0r�j���T�O�K^�{�|�C2o!"�\�A�-R�l���+|^~,��Q�^�Fj偨�e��u�3�;<$�k��j�����$��o�>��	�����(�1��!0�/ef�W�*zsY��IY<�q�Wz���/�M�� ��� �� ƸJ�����aʯ�S��6Л���q����/�U��	��Ok��a�vS���L��a\�Ϛ�f�0�/O�f���i�c/�����lK+ۛӖ�%?��`hyo��Dy
S����P5�/�iƹˢ��b������b���������⭐��
0��Fj偨���ʺܙ�2ɔ�m>��x�OS���.�B�� ����?���2�$���f�����%�H�_i}�MfS�m4��E�^��Z��rf��:��N;�E}���v���0heY챾��=������-�T�l9������_�f�-�O4$L�D��)�j'�0��"�pn���"y08�o��Y{x�Ph�9���S�6a��N5��L�����k�KCG�������A t@gx�;�9��]>�i� �&��n���v� e��F5��a:��+����R���w�<�TJ,l���#}�x����a�.��_��cny�e
E؏�Kof�}�����+#���Ł�4A��J"A�=��A5�n����/
7�3��:���a`�x �+�f���o^��\�lHdo}�h�CՈA�s&�T�7=h����{��6D#���*���|ی��[���Y�R�5������-yP�q3*��J20�g�XI�u�E��#WO\�ȫ
�
�O����a&̠�:�!rS۽R��bF���s~w���߷EQ?�Ǯ�lmH��Z4p�G�X��Z�.����.O�U|sk��V�0�`�=�	q�x�����bN�̞:��/E�g�]��D�f��h���"�1��l���c�m�S$�:S��e$����5�!+6�j���f�%��������]:�E4VU�@�0�����i���#^r�w���~��n`�O���|˄��[좚���/<A�G�T�9��8U��(TQ�:�X��f�g�.�/2�f���T��n���eS��{��� �ǭ�7��`E~��sS7����$�JČ_�*+���%b%Y�q4I����8�_�S�0�����=��q�%K<x�0�������vx�n��jf�T��7���ر��Ej偨�B+�rG��ֺ�y]�m�]��`LC�z!�`�D�-�Pͬ��/��OM�ʌ�
q�.���@Ռ@�0�.򜗮S��-G%w�	��ܐK���kcYa"���f����K^�� |]���n���ܪ�J20�'�XI�u%9aަ��ԛ�W;$vΒ���[��.��Ri��f�����Q.
�x��(f;R���T7BA��:3�Л0����M�[=nv��O�^�>���4M�L�-vR�lI���|���V�_pU�b&��)Lu#�3����S>5n����aZ�&�𢃋{����~�Vz�?
M�t�:N��3��'/4A��J)D9gA]#ccu�m�$�nuU���cgi�D	��\.-�H/b[�a�XG5�E�_��=��+�L<?�)Lu#�2��q��?%=�ߣ��`�����ĀN���f)��b)���\�����j�g�v�bƭ�<���n��B�uf�c~,C��$4Zi��]�eQ��y�� /ɶL��b$��v^����9�����b:������a�Ķ]���t����������8���a��F�8��вD�-6Q�lS����kѥ�3i�YT�B�q&���Ɖ��^��d��-�O��gWK�^#ZB\��$��mU��ۦ��h��9    B4�$QΙQ��J5K����{L(��46A}I����&K϶�K�-�Qͬ��e���`�q��(�D\̿Ye%գD�$�:�&y��Y ���m��ӵ8��>6�#?o�=��a1ߒȄ�����v�	o���R̜{�<������`�\��3�~������xm�[?]}���"����C�[n���s�f�0�S�ɘ���(�Q(VU3��8.r5O�9o�����X�I�B�gH�!\˷P㶘end�_���K~_{*1^��̅A5Â�����<˴����p�T~��]�v�QF���s�C���-L��[�\5��
���{�U�}fN�9�*jRg,��K�3��}ǌr` ?�}7c�A_��[nU���f����.�*?�VV��1�	�*+����$b%Y�q�������gS��_,/�dL	��:M��r�e�P5��|�SE?���\ wP�Zy *Ʋ�ʺܑ�~�ȣ�U*>�Zu����H�����֓�x�kY ��-�7���?b���E[��T&�L@8�	U	�(�̨�)(ռ׭�wvxc|���b�M�]ꥩ��G�-vR�l�6ŽΏߗ]�������)Lu

�Y�o�3�9F�W�|��dA��"��m倰[,��Y㬺���[��AVS������4hM�$���9���ʣf�r���$�u��~���$����̵���>_ZY��t|#�K��V��[��#���+1��}�"����(Y��k���oҼ��;�z���Lq�ĶCJ��bO��6*��3�ǿ��E���CfT"4A��jD� �9����<G���7;�G0���ٳ/�!ɲĶ�C�-R�l_�����o����o:d�v�&h0TMHD9gDWL+@5��$5�n+>�DY�]��EafKH�-VR�l'n/m���?]'�Es�֨`�a�r���&���.Ϭ4g����0����7�R	{��saj�a?n1��5�c}�+yQ��n�̥t$<���n��B�ufX` ��~�N��/�� ��ЫQ���>E�6Dv��T3��������;��w�Ocu0P5��̠D�������vq C7I]7�Y�!=ॺ���&�{�f�=�[uΏ�ru)3���S�Ao.�B5�#��r�T�)�ע뛶��������������B�)Hx�-�3a��@5�f=-��o����~Jx
S���L���9�?-���N�	ҁ�%C
�+�d&_6�4=$^Z�M��s�f�|\9����h`�!O��elv.��Z4p�G�X��Z�.��m��e>wVx��}�����N�9�8�� `7T�h�%"�n1�j��_���U}Gd�
N��f��0��s0�)���Rtx���K�ȃ!;�b6�gvp�гm���Vћٓޜ��S��5��[B��z�`�߰-���H%���C�ϝ����W��~J�����9�����y�m����bt����!���7p�C4E��������I"V�uGIЉY?q
g���97U�T�+�G0u�#v)7;A�6z	�Ō��m���J\�~�5�]���:�	��L�;�f]���?�y}��v�W+s��wv�7�P�0�,<v�MT3��Y���r�	/ǥA2&�	U#QΙPs¥A�yL���W��S~>�����A�����!�Ԗ��[죚�'��;�Z�x��RfB&�����B5�3Ǹ �E~6������p���.s��$|��~��b��v������VX�̩��ZJ��Jb))�3�:L�4�琗/��x�^�ˠ|�f�ؒ�vK߫f�OԹ-���_�{�ȯ�p*��)�j�0��$��Q_=k:[���aM�	� ��{�=����KC��4��l˾��Z~5%�K��)�jg�0��bl���V�2����7������s
��� /c�Nc�N5�E䝞���帼���b&2����	

֙`�q߆~i&����B*�>�@�Y�X6�)��R��m:��yC�?`��7�fl�0�Z�,�`UÙ2K��Yө�ks����;�Ӑs'��#���^e��M5�iU�O�T(����S~�!͐0C�Y�k�J L���3
��VՖt*��o\�eYǜ7����E|�e��N5�j�[}�{[�h6�al��Ҡ5�%������c�@�Am�?ܺ�s���XRF�0�,E�_&~���[�^5�*_˼V��(�B�	O�`����`��d%�D1��p�楨?u��%vxW���`x*۵Y�	��@�-�Rͬ� �������R�2 ��R��PKIɜ�tō)�Ayp;�_�^��0���\�z<�jɕAُ����6W���s�&so�D��uUe%��Oa��uG�<�n���};�iA���/�v�g�,na��P5���r�w���Iv	��	�4A��jD� �9z�˼A���n��{r꫏Cx��ol�A��0v��߄���f�����u�+u�`�j1�:�����@�0��7V�uΉM�n��ҟ��+I��Z��O�[�)��(������oʺ�Cdc�;B61saP͠ ��"qd���K[3u��P^�m�B�$	�s�:\c�t�jf?��Ϧ-�꼮+*yxO�'�H+�36yge%-E3^�y����X��{d(t����н�q&�~�4v��T3k��z����\�=�+� ��D�	U	�(�̨ü�T��F�{�wX��������}��>S��B؏�Gof�0������u��s��D�E�
V*%6yGa0k`VR���i��y<7�w*��g@��	&KX8e�M5�E
�eU܏?�A�w��h!�S8��F((4Xg�_nй���Vݽ>���b�<<��y?7��s���J�n1�jf����\�	�(fgE:O�`�����`��M��8"�[O���0��i�Zp邠G��<�gPc��I5�F�W��	_	���u���P5"A喈ד�
F�<XZn����Sx��(����t��L|���S��,�,��7�2���_�N^U� {O�F4�&$��3�#�����_���!�=�%�B/��gl���e�]�n1�jf@����tM[���:��	O�`����`�޾�� D�|?�����䥱>���Ѕmώ�7����.��B�)�GG����:��f
��X����T������^������>�?�������fָb�d[=�Ԕp��FS0�Վa
V5��Ү��g��Jս�_�S��mf��݂0�m&�n��jf�b �	f�ߕ��L����O�`����`�^ky��?����w��<I�&�6Pp� q-�a��H5�-:�5���vL-H ��@h�C�D� �93�1]�<-:��7��]�#bb��d�G�����-�Qͬ�>y�k~��m�?|:�>{��p0��PPh���^�Q��P���������xxv���PpH�8��~��n��jfK�Q��� �n&�Q���J%ba`�w4����)�!�g˽ǪP�Ye�ţ��8��L��\��5�G�#�S~*��ܼ�2��qQ>f��d`T�����8��hd����� �p���`෗�{�,��)�q#��,?�����K���"H���
V*g,l�΄�W�d�)s"�)i�.�Y��Y��uU>�,��m��-S�l�Y��*w��FF&��&Xˬa
���Q L�����ú�g-W�4/}y��l�z����p���[6	��v�����=����7oJgĬa
���Y L���3`毪͓秶y�c��>4c3��x[U����[�����`� ����v*��;�̒�	U#QΙ�ƀQ�sP�!�]>�a�z��]�8#��Fc��F5��e���綖�E���@�H t@g�/����s�*v��
�~�l�v�C3������,�l�������]ߐ�2Y۹Z�p��'dk�c���a\��"/�x�"L��{>\�l�����e�f֌-�̐�fWń-���4A��jB� �9#�=�L-����ÄF;8�Q�    ^�!o/N��2#�˨f�+.�9�z����ؕ���¬����I"V�uGI�u�W\�O���T�'������ȉ�E�_)�l�ߏ,y�(�Ŏ��}?o���p����4��S��oTYIF�$+ɺ��$̬�8�QO˷���[f�ı�~�-t��[���Y�/?=�g�w<btz�1�2p	�i+�#6yg�_0%���ٍ,�/��{vx�b/�=�_�06v-�j�n��jfx~|,��~�G�\_0�Y�\�3�)Lu3�3���&������^�.�e�>x���I��v�Z'�jie;7p�^�y�/MW���*�!s�������L02���d<��=}~����[�Ǖ�`�8�č-�K��m"G�-fU�lv�Wy-�w�bƚ��p0ՍPPh�K��/��?:�r�����>1n��nI|�������q�ͬ� �KS�x��+���cn����

��B���qh~�iZ�e��fj���}ߵ�v��T3��+��y�ؠ����:M�`��HD9gF��@5��2���w�0���"6�->xi��1$�˨f�����XjC�ƿ�
V*',l�KHu����)�����׭��>��	�'Mݔ���6�(�Lc�L5��r�Ww�%nOsb� ���sa�L�u���,m�H���d<@w)_�8���_l]��x�C�b
[�k�^W��I'��5��&�}E4���P5!A��o�M��t-�s/�.Qi��c���=����R�: a��G5�g)mZ�R��I��#U��F��8��2ZP�9�`P�+<��hi��i���$.��3��&��=�K~���{�����XT�B�q&�|�,�N���=^�$���c�����ȳ�c���i�f6�Ș�o�*s��R��qM�`��HD9gF��yv��5\;9i��Y���;�,�*6i��f�Ӿ0
C���T��]�)_���Q1��V��,��е�Q.��\_�m����,9�)x�VKh�K�f�4�f<�r�/E;Na�2.���Z4p�'�X��Z�&*z�vw��ɐ�%���:YA�s��nY�2�Ŏ��-�3/�{}�&o����t�]�Fx
S���̰�0��x~��u�{�i:e _���z�|~����l��[l��Ys��t���o%tK}�dT�e;0j��a�vS���̂�*S�Z��S��K@��b�X�-ةRrȂ �m5v��T3���9�a*���x�k��`m7������	��3�g̀`>�$�R }�Q�w�=?f�����Mc�vȔ������v<Įg�Z��pUe%գD�$�:z�߼��ݨ�b×*��ɺ��y�Q'0�b���?��	6Kj�K�f��%}���?e��w�gK������a�t�x�D餯Y��}�,�0�IWz�ݏ-k��b���a��>�o�C.r�b%�>�f��d`T�����8���[��O�Nn]a����Vy���0��`>�����a��O5��L(pu��+O�q��9�@y
S��댰��C����kN߃�z7��ݦS�gi���n��jf=�Ѽ��������f�ޕH�^iS0���a
V5�Y��~��Y�:�[	r\���k�ɱ����R�}�Ėmw�n��jfKu���w0���]�Ȥ� 4A��J"A�=�-��E~���vI�{���X��Q���k�6���m�f���8ߏ�}�1K��v�I�<�,��.w���umӞT�+����vxS|����fd�8�if����[,�l�a^����
��N��Ć���P%� �rΌnx��j��-缘;�(~b�p�
d�G����\���b�̶�T�����x���	f��(O�`�����`�	�8�5�/'u��[��t{���}��K��T�!�ط�v��T��O����,�f��?Ȩ9�0�Z�T��j8�@^=k��-���`R�,d.f��-k��b9�����u+�����Q��LHx
S��;e��1m����yߊ�=G� c�\p�x{����!�{�f�C�7܅ ǯV"���J20�G�XI�u��V�󏒋�m$�[n���k�i�?��Y�F�ea��[̨�Y���x,�^��;5�x��<O�`�����`���� ��<�'<�X�!����\��K9p���2R�Ö"ͬ����X���"<?�c�� �)Lu3�3�<ǋZ��冕qcy+e���*���P�Ol	f(��J��-�֥i�����Kw���(friQ���T'���`�^k�\����G#f��ޱ�W�{I��^����GRv��T3ہ�ע^n�� s@#��@T`Yhe]>_��(/�д��������i6�`Ei�\�?�[$�،��[���YOg���r����������@�0�ݹ������p+{�=�C��&aa�9	Џ8�D�Pv�qT�?H��`T�̢�N �~I���	�(�L��8Q����n���.1�~�e�C��;H�$�����f��'����{����0�ȼA�&h0TI$��3#�y_���=9�@;ܹ�G~���)�0���Y��~�8z3����8x�yS2�;dT0�R9aa`�_�����4����;X-�����^����F�G�Rv��T3��_D�RvُT0�R9aa`�_^1���|�<G���ԗ������`F܉�� ��j0��b0����+��*�u�Gpƶ���S8���!��,������?��%:{X����'\.�k�wFZ����b,��~�E��9���ܮ�<�KE�\��J20��XI�u�Y��J��|bW�%L�^^*���{�v��Vd��C�5�Iy�n1�jfM�xz.1�s�abGriu���P5"A�	��L�H,'��j�l�~���\�-te���kq�	��>����x-;-6�@�� 4A��
� �r*�(�[���{��Ԃ���̓da��=�ГY'�]'�gie���kQ-���.�i�CՈA���TոA5�C�`���sq�eY<q���|����?���X�Q��ћٗ#��_�S�P�Ո������B+�rg*��2)��(�{ '�<�;���?K��c3�C���g����[����}�o��?��+.<舉��YT�B�q& ���Cǀd�s���a�Ō�:�v獰[���ٮ_)Z��A^�!�u�\���:��	F^�!s�~E�9�c}q��M�Ȁ�Z��u�4���.��(\K�>�n��jf�D����cq�e�Rr[�:M�`�� �r΄n8E��GM�~��a�!�H�0J���?@�ط~�4v�yT3ې_�wy
�������S�Ao�E�����m�Q�Jϴ��x�OӲv�Ӌ��z��=��n	��b	��:q9����t��(�M[4VU�@�0�^r9a�t.�����F&�k-}���,����b��6Y���7���CS�rL�J̄Ũ`�a�r���&��������S���au0i�9L�A@���@�)liT(�q����x��M���eg�����&h0TMHD9gD��j�fҼ�Q����%p5s�:5e���g^�X ��:��-�����s�u��	w��Q�k��@��Ug��w���C�����0<��b]����r���[���W0��cD1�>����

v�*z��lC���j|wX͢؏�(`݉�enl� '�k�f�dx0t�ǿE��T1��tVU#��a�	\zL'��qSJ�Ny
�,�,5A�z�!	R��#�)��4������8��`�/���1x
S������~��_],�����K�G��_"M���$�[�f�����M�G�P��ni0F��W���#&�`d\=G�=��O�˔�Xȯ?�� Ɠ�e�����4��F���ԛYW#���e��Z&Q��[� <���NBA��:|��ѿD;<�y}��=R�ng������jX�;�n1�j�oS^O����+xX�T�l�sjD4��������'9a��d��§�M����g9�F    �-&Sͬ!y���/�����2��p�8�ͱ(TQ�:c�|��w��役�O�Ba���w.�GO�����9fi`I�G�-VP�lw04���㷗�b����yY9s#_���-b��-�"~h����3n؞�"�N^�rm�����=�,��Dx3��.�n��jf?f���E���_O��)θ��I���Z�p�����5%|�d�+��0�ku��H3�̏>)�!�RK�YBn���ʖ����~ _A��d�'4A��jF� �9变{�h�gt�����^�~'�y��,���eݞ�[̣��wPn���k�RtreA�.�bu0P5#: �3��wT�N�����)�]��Y�EaƝ���x�/o�~�,z3�jUW�_v�3�|��M	�be�0�Z�$�`U�Y��ze�kdl�c�.�#��I��[��͏�8��c��b7���1��G)��.��p0�MPPh������:��J~����e�c������Z�-��H��-�X�3 ���Q3��(O�`��PPh����	�@��E~��~��A�Ք=�&�Ia9O���4��*����s�	R�+���P�HD9gAr����}�d�1*�\L���u���$��J�ny�T3�� ����x+����6V"Ye%ՓD�$�:��\Zyj�|�4�5�}�������~�&��E�čR�㧓[������ͭ���_�;��K�q�����|,
UԤ�t���(q��� �B?�=��F��r�n�~�̖.s���%y�$�&h0T�	W��3��+�A'���2?����1�;�s	����i�Y��~�2z�?��*0rY\��'����4���T7CA��:#��bkC�|6mYU��NiA�r鍠K�(��>H�-vR��M1p�n�=���Cl�`�a�rN#f`�wf��-��Sd��%���(���N].�tp�fIdq�	��j��-y%��_�eɯ�b&}%�)Lu#�3�W���ЯN��Eݕ��2A��Ł�[*��ԶA�-�R�,?����-e����)an�6k��a�vS��1$xƕ�ճ�5���>�0���]r�a�1O x��a�0tr���V6�u������+�n���i+�6yg�2y���d�b�-LS�R�,�;(-��b2��������1e���O�&h0TI$��3��J~ꚗ����?�{�]��1̚,G�E�g�"j���f��9�e�̗P̤��<���n��B���(n������{}�S���KD��q��������mÉ�����;�������5�E*R+D��V���T~�'^��i��P-��a�ő����LG�����,n:a�C5�e�,�s��&��Fj偨�e��u�3����k�]��?�b�,H�?����dah������u7	/�\�IR��E�XT��3��x��'��+>G8�3�C����ir����,+��b�̶WtzFo�s�#f�Hgu0P5: �#�?_1fAש��w�#��n�7��=�k֗Ec��E5�&p���-��B ��U�	UQnzi�J&n�5O���kř�y>�09�h?�+a�H5��m������<a�V���������@�0�*N&:�D�ew���1f�J\��arȲȵ�"���f֜l���O���dL��M�\F6�S8��

�Q��E�b#��3����<~zh���L3�2���������a?n*��5���h��?n���1��!�^i+�#6yg������>e~�.M������&a��i�;L~溶�Մ�b1�����E���r��!`�8�����������l�)�eȿ���e-'���F�i���g���n��jf�����\i��Q���J%ba`��/�����O�������,�,���OֳHf���~��b5��v\������m꺐�L	sPʬa
���I L����0K��Y�����}]�cv����4�`bz��g��E�-�S�l�B�kY?mu�s�2�B�&h0TI$��3���"�竄�b��hp��o��?M�$�8��b�̶!q�zuO�������@� : �r��v�S��v�i�Q*M\<�ğ'ě�|�U%���I�V����e�A�4R+�ڬ��$�z���d]�Q��_���0����{�s�Y��A�2��<`X�x�n��jf�ߪ�@��SSi����F��8xƸ:�sL3�n��a�5èUL�ϭex�/�9~��b��[�g���;���{��ߔ0��fS0���a
V5�Y 3���5-,�m@�zt���]�$����C亶K	)��v��u������9��ӭ��T��Z5L��V;
�)X�p���/��Ys�����1�e�/$M�Ã��|��4v��T3�r�o���(ǣ2s���p0ՍPPh��[��A�/��NM�
�5vy���Ø?��,샖�n��jf݊�/��>�����mF�4A��jB� �9#�nrKJ�l�H;x�!t�!0;da۶���:��-�cM��_nuS=v�B+X������Q"V�uG��x$c��y&�7q���gB7L1�=<�ύR˝�������mc�|��U.��50ۋF+�6yg��j�)24�����C����[��Ǟ����(�-��XK+[PnD�ǟ�[�t��p�[�5���P5"A�	���FQ��9����o�IA0'A�&{R�1t#[~Y�n1�jf]ƕ;��}rK�:M�`�� �r΄jLb<���/y��˧���I^�r��ЍQ����x a��F5��_\�9f���i�<�bf����	

֙�L�b�'����\T;��z���ǅ��x1�Z�}��K�f6���ʡ_�J�Z����Ѝ
V*%6yGay8�|����O{X*��W�.f:5�`�e�4v��T3��p~�KE0�-���:	��,�{7�u����g����0{J-��&�W�~�Pz3{���k��oe5�T+�m������I"V�uGI�\���'�S�K��tUn������]�]�ɴ�6�i���f����g�~ͻ��3����� t@gU-��j:�����=?�k�a�%���ȯ#Qv�QT3��Wf�R�=P��{)O�`�����`�K�8˥��D#E����x�@ą�Cφ������s�f�\q���oox�}���@&3�	U�A�s��!��)浄���M
� ��,aSwx�\w�:<i�Өf�����[q����p���Q�e��u�3�_�1�|�6��Źx�)p�i`�*o�o��2)�����F]��bJس��)�jG�0���S������-f����S{��5�o���6o���3K(:e��N5�]��K2+��y�`�T�H�<XZY�;SYn4��dW.o��M�����s��n���F؏�Bof�c8�,��2&2�0��P�)Lu�3�W|k���Ƕ�{�`���.�;��=o]��aj	��;�f��9�mQ*0#�*3wr(N��,
UԤ�,>�~��g�V6��>^!�]�S���:Cd-�Rv�%T3���h^^
9Ù;�YH�<�,��.wƲ��Q�6�d��������|w!wo-�[����b���m���w�}��2 ��:)�	U#QΙ�L�K5�Ky���J��MCW�.��N3˄��[좚Y�i�
�uSǨa
���I L����o��J�ϒ;vx���C�I�q�O$������[���ق�O�Ni�U�	W�*zs,
UԤS�~���Yşn}��x��!/]��.��>�RL$o3��n1�jf[��=����csz���N1�XMy
S�����"�~��)����W�����ے�6�6zͷ�,�·�q��nO�����{n2T��Ju)S5Je-�W��7AP��tQ�^懏����� �C`���*�iVi��@�P��#����9������7��%j�b ��㍠�urv�sY��M����<�<�3�#�}(^��0��$�    (W�������O]���Ȥ�!4A�R5"A�	=CVv��.U���@�a����~GQ���v�q�0�\�Q]���*;�w�ЬD��겒HF�(+ɺ��$�z̩o]q^�&��v� eq�!�(ľz CWa���s庫���}_����-V"&�ݪ�J"�Z"V�uKn_�M__q:`���9�=\�,U�/��u1�,]�ߒ��bB3�cR������ݒpq&V[ �j'����"x�P�kM_�k=|���=<u��8U>o���S�w�n����8�o���S�7�[�ϸ�e����IN�$k��C�s
��
&�a�G0�"���L	���1�����F9'�U�k�<j=96��#IՌ@`@oǳ� #�s0�P�׮��9�=�'Y�c�;E;��	��0f�k��
���u���+�Ex
��n��B��f؜�/b__?=}�t�{8 y
�m#��]���_/�n������ ���o�W8(��@fϏ�IKՈA��&t�c�T3�9�WG�e��ST$e��}�Ⱥ��IQf��l��b!3����ݛ�s=|w?����V�m�鯺�$�Q=I�J����^�]_qZQ�/Oʆ�qx,�&a�:����8s~��ŀf�k��j;�s�@fӉ�IK�F� �-9�P��h�S!��0Q�X���;ۮnb^�k���[,c�9]��f
��a��`HԖD�n���1�X��qu�m~�E��g��CeFRu�������v�)�0W����{��5W�)u�Y$U3�a<:��D�Օ귶�%�D9�ef)�0�����\�a?n<����?�WMuV�O�,�k�X<��V7BA��z3<���ҿ��5+�{�ۖAF�������v���0W:�j�=�Ug�.��ZeT�$�:XX�Tj,,l����ξʴb�w�o�2V��8*YW ���}���[Le�9���V��+�4m.�n�LS��)LI=����H��0���_�e��ǅ])H}�4���a��s�������s3�.��F ����IK�F� �y3����<�f��w����DY�.�~V&�+Z��[�c�9�R¼a8�����qL�G%܁J��-�k��@؂UoTx��k�X�	����4�0�"�PY5���m6�n1��>[]���_uߏ'`dO�"� i��� �rވ^�=���VN^?��?H�$T����|��E��͔��y�0�Bu�ue�ax��$����)��:��-���,�K��S�������L�<�ٱ77,ԋұ5A�-3�\_�������ǳ�O�!�"4A�R�� �rތ��R�㩼���96�u���iP�A9rgd��T����b3�Y��~;w��O�c, W��IKՄA��F�v���eJ�^z�f�W�r�ԿE�}�|ȹ�H�J�-2�����;�q������+?�ⵍ,�Bi����b��ݔ�`���[;�n��>M\�$u?3���Y2�-�\�й�՟�U���m�o��y���@�ՎaV=<# �ru�9k�ȂW����JC8Z�;�jd~����b�e�����q�68!��\�C��$*�-P˽��ܴ� X��TC����rB��jӑ4#������v�-̰?��?T��~���u��o������J儅�mޛ�>xd_eZ��t�חF�m�.Jø���|��(O����#��m��������5|�m��_��#��3�8��/�'d{zH�AFW�g�c� ��@��]j6��(�������$J3G�F�n�����U�յ:~����\�{�S(muZ�7�s�k��K�F����;�����(�w9r?�b��(a���s>��U/��ڵ�Ϻ�7�l!o�S(mu3Z�7�G7�������l�8*�4/������0uL#�#�a��{m��}s�[%��Yb�:XX�TNXX��7Pھʔ��ak}��q��yg�.G�����-3�\��U���/C��c�f6�)O���MPPh��_�!���wr��ҮTE��� �İ ś��7�z���t���#Цͼ�g��Ma�H���QWw4z�|o��K:�4	RE�NG�eT�� �n��f�s�I��眑q�P��@R53'�����'�S�b\Ԝj�c�iGi�e�F��I���2b��s��<5��Ǻ~�_��S���@R5 ��f��!���K�w/v��'i	���$v�^ts,�br�U�Q��F}b���uNJ3cWJ���P��f((�Xo�����Y��۶_��֧�>��E�2�+
?��f����Jf�k�s��*�?U/j�&<3�S(muZ�7�W]���V�y�V��H�)-�C/�_�W�+� a���s�>��e�f��-�
h���y��׹��9�t���7'M2����c+�D`.����1�0W^�{~�[�2m&���LS���������a! 陾0ӣ���w�y�n]��5�a�z ��f�� f�>���;����v�.q��1G0�}�"ɩ�Eb-bzyFt��U����TWI�@���N�"�À?�E����%"�k�a�(��N5N�04=D��\T1ӋJ�2�PpB��G���2�3�,�sʨ=N���z��I�V`R�Hʢt-�v���0W�k=�K�u�0WD��$*t[�6�O��k�@�ڦ\8Ϯ�=V�4Ȋ a�*%��Q9�T��f�k3��6�*�v_�-A[�֙���$�Q=J�J���!I�6�W�}��*n�Y��Q\f�Vn�0r�Iv��0���Q���s�*'C�!4A�R5"A�	��T󘕵��*�ù�������� ��v��Y�!�CJ��b#3�v�����+<as�`��P��&((�Xo��pR��?'d��wxBy�X���f�~E�\9�����0�Y����cĜs�,���@`@�9���e���f�����}�B��0�v�����5Ţ���a�~���S=���t;7�q���.+�dT/����x����O�~(8������v��S3u���ڜ��ۙa�=��?�m{�gߝ�d��l	�_a��r�v[���-�+����5~����ûP�ke|Nu�ӢP�\�C�Ùa�	U�~�s?��|M��3M��CS�&�zc��+�Mzf����+(����R��AQ���$u�ruG�eBn��2�����ձ���p����(M��TMHD9oD�2�<M����4Y���[��� F�-�1ÜO��C��c����I�z��V;	�-X����E�b�k��>N�vy��\͓Bv���~�Eq�/,Q��F�����u���;���H�h	�&�;XX�T�XX��	�`�þ���{�i�p��a�gj�ą���k��[��b23�[����W�j����D����+�#�yo��c�����W>!-��T��ݛR�6.����"���a�ň��.����R�,F� i��� �r�F,�Q��Wk���/��c���2��,.W���i���.�n���L�������k�Uo��.i���ȵ�Q l���gzYbu�9x��=���2��8N�r�����u��[�f��f��Kw=͵�1b潘�@R5#f*��c&�դ����ל��_�,�B�*J����{�rK~ٜ�[Lb��Lr�u���}���(f�By
��n��B��fx;���~�ߴd	�|w]yEI® E~����a,�~�Xx�+{W3t���L�.�S(mu ���5�U��?�X3�r?���ü(҄;L��h��q��dPv���0���+'�;�T]aJE �c� i��� �rވt`%�<�v�:��{YPfe����)��Pq��a�����O�X���X3x%r�u�]Vɨ6����x�����l�W$o����֗}�8�0��(K��I��<���bH3̵�����}uz�o0;�DmIT�@m,��v��X�I��npvi���Y��Q�A�?��)�/t����c�a�����0I%1b&���@R5 ���$cB��$�r/̓0*S~�)��,s�܄�b3��1j��
*��r<7���X���Ҫ�J"ճD�$�>�"9�o���x6    f��wX����ȧ&P�ZHa��b@3�u�o���>����F s��IK A����y>e;�������ETv�s��di�ȐCُs����X�fLc8Ӕx�j
�D�y�U��"=�©n�W���pGI^&%�{@ݬ��7a�X�s�:��i/�ᗡ�O����l	S���a�Z�[���!A!E�k�f��<<��]T�l�J�ǹr�9a���s�����j��d�Fh���jB� �M~]U�_�j�K�����v��i�'�P72U�ۃ��b�e�{��TsF�ݬXHԖD�jc�\͹���R:z�{�����ikeE�i�MSw7ބ�b	3��������mΩ;"WB݉�@R5c]�M@G5��B����+N�
r	��+��R��[�b����c��Z�=l|#�YC 4A�R�� �rތ�.�V@4O�pw5��n�=l��a�y�m,��p?0��b3�����}�~��� ��B$jK�B�jc�7��;dB�&K<E�]>�zk�o-�~!M��z��v ��퀇��B��T�'�]
E4A�R5"A����/���4��q�N}N૲ò�.
+��~���:���-�1�\y���Z~���+��ɩ�Y$U����0���������p��ݺ��j��$�B�|6u��Xyd���n1��zs���C��4�A��f�_��P��F((�Xo�:a��ɐ[���{sܣLp��<)J6�4��2q���K�a�_翫�kՏVc2 [��֪�-�k��@؂Uo�"H�k�-���>�Ѳ4H�*�jV�^��H��?�n1��{�=�Y��9Ê�̼��-���-P�=ݾ�k?E���/;MqҨT�4	��]�a�8�E�-�0�܁��˺��v���D�m��@�ՎaV=<#x�th�k����F��5��Y(HӤ�<[�+���r5R���q��a.?�~åd�<B$-U�A�3U��'|\���3�A�&&�P���).�T�n1��:�>�m����j���&HZ�F$��7��FT�����g� Q�o��E��; ��a������h4s>b�OH�,,W*�s�yo�c�c�2��ά��a0e�L��Y�!��*��2�s-��g�oC}=|׽T�$!ĝ,G,�����0��[0$�t��>4�N��3��U��R?KB�2rY�[Lb�9��@ȩ����^2�EЖq�W}�"ɩ7"�1��Y�
�u�bdԕ�ŢE�>YI��%�2���+Cn��2�5�=���.��I13��<��V7AA��z<����N�6Ud�|�" �)��Y&jj�4b���s�|�-�� |[��\w���DC�%���y��>�vѠo�r��9R��"c�[���LrG�N�~���a��z��o�f�����H˕�ۼ7�۫�ѫ�)i�,5�]�ey�XՅ=���QR����n���t�/�1F��X$U����0�e�6�uNf��ù;um�Wvx�q�Di��|��$P#ˬ��b3���y�~��m���!�0�sc��k<cىy�(u{\�s}���*|�� �0����i�HlK�-7�s�鼫���>U����\��)���

-֛������U��3(�z�)N+���s{v��Ge�9	��Jf���I���������M��TQ�[��R��S���S.@�e=vHF�����p��� �C.!v���0��=ҿuWp�`>��DmIT�@m,�ƶ^�������m���e\�"����2��ql!���ÜI�����n ������DmIT@[�6�{S����m��������'ࠌ�<L���E��~��+�a��s�:?���Gu��>@&[��&!,�����0������~<'�t��e�B�쒍���X9ʱ��O�-v1�\�ӻ�Uy��>����:�H�f�x#�u�q�s�Lqin0C�r웡QW�e�R�Q���K���$�슜�b���s�S���;ߩ/��SU��,WR�v��\��XX��=��6��L���V��{�ϋ�,�L9�L��1��1�$���a�5���� %�z�V"fMf�e%��j���d��#��T�UWc�h�{<s��Ş���|;Vs�łf�s6�_I��YG{��lcn6Dx
��n��B��f�3dY���S7@����� ��4��k�~p:>u�'�Ǎ���|��q;W_����'8;G1�qS�Bi�����b�>��rT��s�����IAP�Q�r�E�y�\%�;�a��0�cs��Y��|�LB����J刅�m�[�WH���1�3��&��/�o~G�k���[�e�����k�P�_Xkn=��1.���Z$9��H�EL/���a�;��4����0� HKv���T.�ˈ��bD3�uV��;t�ؖ0����@��NaV=̑�+��V�-n��>i���X��I�!����a�;V���jf���{@5�G��[�̣f8Ӕx�j
�DRojv��wOo������x���.�P�%I���t~^$E��f!v�%�0g2��o!��Ừ��Ԝ�'e���{qB�_f
N����Pץg��H�aC�����O;��QPFE�������C��a�yuu}~��F�is��3M���0M$�tsx���1��I}�^o_���˱��.�['IRf|�]������%�(W傮:/�Y�J\�%Qm��X>f}���k�c�vp��TY!M��҇�Q�R &�b�z�U����^_`s	#�%�Y$U3�a��g��\N��P��>L�
��DE�ngćҕ~\�+�a�X�snf��;�����7��64���Ԡ,,W*5�y���]ovЫ�EƎ��R��B�Ռ7Q3_6P���$�]����b/3̝N�~=��Vd��F1�R�J[�������kb�K������Nq�Qɇ˕P>4w�y��b'3̵�~<�-d��:��A1��Ny
��n��B��F���I��ϻ!C}<_w��,P78�#�J����Q���[Le���>���~�O�{SS$[�d�{��V;	�-X�����Vך6D����d�i3IS�7Q�l�.�!v���0WR��q�W׿�os�I�:3sC�a�!��"�tC}}�E���0�I�@�	qa�
��Ⱦ`�t���M_s*��{};��ڴ�B1{��J[���M���x��3�*��}�r�y�y�Ev���vFE���v���0����;|�=���p�1$jK�B�jc�7�u>r)��m��؟H� ��G%�����ʰ[�a���M/M���;xj1q���@R5�M����s�8����#6��)�[L�I1��2e>���*f�sy�X���a�<��p5����J儅�mޛ��J�=Ы,9M��~�T��������]Kj��y0&v���0ל�m�uo��u��y�ڒ�Pm��X���~*��hW�n�B{>������]9j�eE���j��f��GG�~h�7��@1W~��J[������%7���wm�gHq��Ӓ�Q'V9+�~���Ha�����0תg�R����}��b��*��%Q������g�.���Mz���� ��Z��a����I��Ű[,b���L��G��� 3����P��f((�ةF�+�X�Q}�=�k�0,�Lu��'i���ǰ[Ld�9��ݵ���:�,X.�9�`a�Ri����{�8Rd]eY��O�_�,.r���z��@�����h�(w�z�t�`R5{�OElL��e%���I"V�u�H�����Cys&�=�U(�,bWB?K�u��5��|�(������Sw=V��z��1���ȵ�Y l���7���gu���6�0��,��U�5����p]=jMn��2�����]��+�P���S�Bi����b�>�[�����ח�Z=�{�Ղ�(��2�ߊeR��ʐ[��re��ۗ���}�N��W�H�F�a�	�!����0������2I��)���a������=�(�FPuo��Xô� Ù��á)LI���W␞�l�����    �vx"2X�S�o�(����(v��0gZ��z�����cA1�ܜ�J[�������t�D�<s%����f�i�����(�y}^�a���s.������ޯ'�-��p�>����J����6�<\a�ۺ���ګ�R�^vq���_�8v�!�S(E�|���hf�+���j$�����>U�%`"M��+�3�yo·�̴�2W�@���vxĊ$�<Y� �� -ֵ
v���0�����3u�*����!Q[c[�6�{��W�����y��u�S꫼��(����i�]"�n���|v�#L3~�����%�����r�r���6���	N��W���6$��=���2H�� �K�~�y�x�����Ü��}ߵ�c��U�s���P��&((�Xo���n$�G�{N.|���+�xŁUBm��a����a��Lf��L����v��+dA�%����@���aV=�Y��j�Y���W���R�N�ЗI��A��D��A���_�[��r��@Xn��~�)��Sޕz�8)���ℒ��(����Q�Ыߛ��ȡ�_�=��e��q�Jް	�mr|��Ŵf�k�����W]�f���-���-P�=�~�\uX۴�:�¿;�"�
R���,�SǺ&�c�<���7�����S��"��&2�a�Z-[���i�*��5��X�!v�**��n�vz���),��̆�-v3Üg�����/�[ w�ϐ�-�
�����ؾ<��>�mNp��V{$aǹ�Pp�k%Ԫvl�v�)�0w1�SGM�us�u%K�� ,,W*5�y��
r��W�r��X=AL���|�B��W�L턄��M� �R8^{�����0W��z���ri�/7�#�f1�T��x��P	�,�R�|����8��<����W_�|}R�a�X�sE�9��1}�`���ڒ����|��t�!���Y��|?��"���xc�ox��3İ[�a��|p57Y�!�x܈DmIT@[�6���nЅ��k� �+D����y�Go�4�����B�s�a�g�R_Xuk~��0K�=#����J包�mޛpw��o�*s���&��Ἃ��AQfe��o.�!sLt��bf�;bU��qqj[�Ʈ��@��j����8�����Zz���Ӳ�����La��(y�Q��vk	��tf�k��y���ß�#1{���@R5#������I9
�۹��yFQP&j��6)�(~6a���sFz����{��}�A�)��/�S(mu ���R���D��Zr�U��%Y�y�sfJ�0
sW�+a?n&<����������5���C�{�a� i��HD9oFo�~�a���V_���Gͩv�RHK��w1*Bu�]�A�Әa�-��T��Ǧ�l��4%Ma�H:����Cz��S��=��5�4r�pro]@�a���s-�����z�V4�L�B��$*�-P˽�}�},>�h�S��xUA=�$�sv�3�Ӳ���b��s��":W��v,�Gl����r�r���6�-���s��*�!0]Q��m����	��_��Cr+�~a���s�yln��?�M�> �#�\�GL$-U	�(���>+T��(=U��/���ǧ%�L�E��
K�
�9�3�n1��:�rκ�m	�0bN�`IՌ@`@o�u3��%�\��.���%
�����e���9a?n<̹�����|��{��=S�b �������f��w\�i���G`v�D��'�����WS�,p,rv�]�0ǯ���r���rL���Z���g-���I$�"���D��Ƒ������AK�$O��u#2?N� v���Šf�k�s���?�'ȸW�)�̜��J[���B���v��T��M��w�A�vp�c��X�A��.v���0��¥j�s-
�-D$-UQn*Iq��T��CDɗ8Kw��� I����H����2\�d�-�1�\QuS_��wuu��<B�&HZ�F$��7�jOQ���ܵ�m�2������iTfi�o�"���.#!v���0ש�j�n�Jݝ�+lAP̜-�<��V7AA��z|��nK�2OR����;8���a�7�M-!���C�K�a��3����~\;]b�b���)��:��-�I/hS��;��VdDݥ~��`�e�1�͚�aPd��$��-��9�\��O����K1�r I� ƛ��������ow��v)WYdA�����>$Jue� ���aW��	�Uc��2Wh�IN�������"]����jv�/�����X�~�L�1��bK3��&�7��9|׽�cA �$4A�R5!A�]ΐ{�h���j��]���N�e�E�Y���v�q�0׃6U�:�ԌG�-�Y,,W*g,,l�ބ����,�E}S����|O=S���6��0.�,�n���ZW�+�|���k���-,��du��\�����{`	оʔ^���̃<)�0g�cs��Rv��̰?6ה

#��FI�L���0SF����X�\<�r�wy��q�����3J����uo���Q�0�n�z�T�V��&<�dv3M��Ti$��7�#��T�\��vʜQ�i^D���m��_���9a��s���{�?w��y�׿��X*���Z=l�\���zxFp��~�յ�I"wX���Y��q[�Gj����%�әa.g�qR���?��I��0b\=�b ����1AD缰w��k}�倄r�BX"g���W���T4��b3��<������>Ly��� u��\������{�9/ �ʜ��$U��UĊR��7~%��b�X�s���I~��0o"�I"Dh���J#A��B�;�y>C�c��s-�0r8��R_0�u��:f��e���V�ޟ�=ĕ�;PiwYI$�z���d��C�#�-X_qގ�^^Ts��~���OHg��ւܱCO�-F4Ü��북���d_ �ܐ�-���-P�=�n^��@ڦʈ�.�A,eP�{�g��P�A림=�q{�a�$�son��U��E?[¦�=l�\����zx�@/����8~�7���2�Ku�K��(�H� ��t�n���:�w�`����#�0b�aI�L@`@O�S����9S�>��VA��.��2U�<	Yg���<)ǂ:a�X�s���P��K5u�e��o%c�{�>k��ԏ"�1�<,�� ry}�1���{��)�$�(a=��O�Y\'g	�Ŕf�k颺�7]����?i�Ж0v[ �j����$8C��յ&���S��q+��LԿ�i����0K#a������[};|W�/O��<}ܐ��q�=l�\����zx����7|�)Ȭ��t�5z��[Xe'Y��i���\�C�әa.g������z��b�ͧ<��V7BA��z3�A�xK�����?}[D=Y�2Q��Ɏ�/u�d����Hf��xZ�?��������%Q1�jc����UC3�FK���?��TBhC�Di��!|��*ᵔ���0W<�^�ߩ����V�G4A�R5!A�� s�<.�7�fht�=&Ye������B�#��!�DK�-�1���?������U>:k�`�%Q������:(�6�Z?}���4~^vX�(�XMyӒ=���^�T��b�e�����~�V�'�����H˕�ۼ���N�F�2���\p���%h��(L�<y��EX�N�!v���0�L�����W�֘63�5�iJ<\5�i"�75o�O�26����
u��4���N�1$Ts�~�n��f�������~�[�M{}�g���0M$��fY��}�y.���C�QR�q����y4G�U�n��f�{��vk����˘ʝ��Y���r�r���6�����3�ӫhcMo�]^VQ�gI�?�8u����ǭ��9=���k�������S�e����V}�"ɩ�Eb-bzyFt�eV溣c=���Q��4��r�����!,�k?��bI3���A-Ȥ�k=��B�+��i���jF� �y�a�h6����=>MQQ    fi��5��݌�2u�u���a΂J�����t+����+��X$U3�a�4P���4�ʪߚ��-��[efi��ѳPs��"��,��hJ�n�/�sU?��ʖ8&���-�k��@؂Uot05Z�4jND�D��i�I�!��C�deG�fBn��2�55����-���K�+2�p�)�ph
�DRol�I!��q� *��3/��8M��-Ҭ�T�Qλ��-��s�:�7�Vͫ��s�k��L��Hr�g�X��^��F����V�b�r٣Jc�EI���*�2J�&�n1���. ����oK\5.P[ �j����$����������e�v
 /�Ү��d+��8	\������0�G�A�������\�ʧ ��*(O���MPPh��_Z�0��)�eP��W�����)V�A�#�
e���s9��Ku:�؝��f1n9f1�T��x8�/�9����xn>?(�#��"�s��DMO�I��$f��o�������v<�������+�#�yo�z�d_E�Q�Y�	2K*w#��M�����e.�n1��2WS]������MC�T�&HZ�&$��7"}��j���&���H�j�<��"�k����[d�9K��u�r>|�׍z�(G�����\A�u'F&�KL2�ȸ~�������K��w�ar�&ʚi�V~Vw�(��mR�n1��ZF������B-`��ڒ�������W� �6���.�W�(�<b�9��ĥk��ɏ[�r&�,Vo�^�5�K�X$U����0�Z8�It.�FO�m��=�P�]��Li�s���>,����[Lc��/q[�+F�x-�b ��9Fk��/���$it?߱ˢTݳ�d=�؏�0u8
��b�e���E=�����k9ȝ��4A�R�� �rތj8�D5k���|�C�wX��� V�Y/!��ҙ$��[�c�9�O�7���#.�4b1�T����8�BtN+��z��q��4���~�c?KRGMBn1�2��e9u�sw�S׫�P�����)���

-֛�+�<���sul�f�������6�E��nVw��Zj%�3�a����-��v�`��ڒ���@m,����wHڀ�鷘�/w��wY*�#��|�u��(�PR�n1��z�==��on2���ZZ��XZF��֥�������>{,�)�U�3@�aP��Y����0gΠ��ְ�b��A�&HZ�&$��7��dM#�����P��g�={�����w��(�R�wq[�3r.H���v����X�6�[�F,�����0���^�F:�P�c��n_.������+a\f|�ua#��j��[�b�����jH(2�'��M$4A�R5#A���V$��c���qƊ8�5�dG?��ҵ�B�-&2�\)p���������(f��R�Bi�����b�	�����/OSwySl�/{������%c��y���h��b)3�� �����������P��f((�Xo��]����/��1���'��%e�Om�(2W�0�n������@|����}�q�.����ȵ�Y l���7����i]k
���Z���0H�4�ص���(K8�����0gޅ��W���o#��]0$jK�B�jc�7��z�i�N�vw��9��/O�o;,��q�P���}�~"�b3�U�E$�z��2��@R5#f���w���4��v���\0Qﵘ+h��\�^z�c�C�-�0Ü��$�����F Z�i���
� �rނn�Nt�5?�է��"�;,vBxSV$�(��P���6a�������NMD�{}éfćR-,�����0���N��t�����YаC�h���y��6�#��"�C��F�-f1�\�7��m W���k�%Al���겒HF�"+ɺ�7K*8�����QRf=+���O�&)+&I�&K�6O�CG�3�n����~Q_��G}��b�����jF 0 �7���1(��\B�P��O�)è�k�1J���[�kEُ�cgaq�)v:3O���Mn��8ٗW��D��uӑ�=�Tq�l�uuK�,(]�$	��Nf�3`��?�f��b.L��J[���l��~�$�T�x��Z_��u���"�j�Y\F\nuC�0S_3����Jf��cui�������~��
��-�
h��roj�~���m�}�����i���U�P���H=R���~�"�0�s���_k�a���b8Ӕx84�i"�76���Bz���ɲ�&E��W����I�:����0Ü�O:C�T3�b���P��f((�ةtDs��T�2�ת?���\�������ߧ��,L�ܱ�M�-�2�����$q��cK؉�a�Z�,�`�c��s�6�k���>������˧�|%�p���k�簛�Xg ��aN�?ே���c�t��P��F((�Xo��E����ɒ���h{��,�R����e~�#�e�X�sE�vm}����MsG�0ѺV˕J���6�!�+��W�L����b����ҠT3W6~��A�������rV��^�Jݗ[��+T�@��,�i���jD� �yz��tT�0���aF���<<.?���Q�d��D�n����u��{R���+,)`ĔN�,���@`@o��K�:�0k8d�Eo5�=L��4c�ݫ��q�:>E��b3̵/^���Ū���vꆡ�u�ؕ�-���	%�Q(8!�ӣ·F����0=u}�t�;���Q��P���l�^���"�n���Δ��AV��Su��L�T�fʷ��$�Q=I�J����^�]_q.�ٽ��/���wYL�t>q�>3ܚz�gP?رLA�-V4���_ۮoN���}�z��n%Z[q�e%���I"V�u�Hn����t���w�t��.'-�)aަ����zk�I��'	�Ŕf�3h�Q���� \bns�g��Ma�H���3�""=4���ͻ>S��o�$(��(��W��rT����!�0�2G[�_�����a�An��IKՄA��FTC�g�y�G4	�?=NE(��,�v���,�"��a��s��?=5�����o`#�`f'��J[���B��8�Q0K����1e��T�cqL��ät��v���0��Sն�����U�b5�=Ǌh���jB� �y#:C� �yv��[u���>Q�y��W�������,�����=��~~֩1,��Bv˕�	ۼ7�+�	�U���t?f��;<Qi���|3P#,u�#���a�$������9v:�J�%���$�Q�H�J���͒�	��VW�=���v�ڝ֟�
�%	��*��j���!b���s	�ۭ:��W�*� ȕ�4A�R5!A�=A��y�`�<�{��i�?��:a�+�&�h�|/���3%�D�{�%Q����|��B��m�E6��xX
u�Ҡd�d�~P@�����-�0����������HԖD�n��rol?�#��M	nw;��D�r��%�C��q�JUL�-�0�����zK��q}�_!�t<�Ge�@��Z$9��H�EL/ψtqm��6�[�ÒQ�Q�${8���"u}�0�Œ�(�znu}��� I#1b�o1���j ����SD�r�b�ھ�ӕ�qD{���8s��ar�E�Q�u�Κ�Zf��`a�R9baa�7��g8��1��D�D���2HS����gJF�Η!b��sm�7�գ��}�����y�S(muZ�7�1C'կ����.��� ���e��g5J�H�ȕ��[�d���	V��;�G���}��S��+AewYI$�z���d��3��W]�j�C��4��.`�D��a��4G����;V�(�a+�a����t���T/��W&��$��P�� 

-�3��գf��wy���z�m�<��8����P���(�n���f�>��|È�dF,������0��Z�D:�墧�z<_��u��_�@⺄[}U70V}�o�Rv�U�0g�]}��׻�� ~� .z�H�f�x�TD��y����]|�۴\謺wIZ��<B��b3�    ���S���Y��K`�X$U����0�Ε����y��s{x�E��jRTr���.fa�8Sv�i�0W�Q�
�����[݊o3H��P��&((�Xo���D����;0���� ����)�nh��(@�-6���|?U�ro�?����xX��	��*@� �y�z��5O_��\�NZQ*aZ���}�1�N� v�q�0gF�۹�_��[u<v���J��V[ �j'����"����ۺ�|���������2M*�H}�2��r���3��F؏�smH�׫��
d��ٖ�{��V;
�-X�@5Ǯ�@u��x�o×)9�2�1�eR�Q�ŕ՝�����[�g�9~��<���禆o�Y|�k��,,W*G,,l�ނou���,�+�8�b.�B�mnW�ٸHg
	��X�(W�^�Ԩ{��}��	ң<��V7BA��.��[��������K}��E��B�BH�pk��~�IXf��e��s�g���䏰>� 7�5$jK�B�jc�7��β!ms���>vW(�ۮyDyw�K��n_�L�e�n���|�u>|�vﺌ�L��	���	�(�MH�5P���E�e���}�[M�ϲ�,��;#��d��a�4b���sF�w�P(����Z�Œ���E�S���Z����Nr?�~�u=�:v�'��Y�I�F	w. �� J��������ÜI��G5��A�KfHԖD�n���)i��wx���) �<�a�ɿ�X��ή"?�>��@�-�0�\.�z�+�z����@ƽ#4A�R�� �rތnp�j�m?����u�0W�n~��q���:��b3�NZW����O��f�}<h��9k���r�r���6�-�x�NX㫐�[]]� ��w��4+�H}Ax�%y�GN�!v���0Wp2엞��u���ڽC��J�)���$�Q=J�J���!�+� X_q΢3=zppt�#T�<* �������/e�X�s��g�3�sN�0.����r�r���6����,��Lk��Q��ȣ0
�L���Z�y�|�9e��s��v��<�(zA0�`�Bi�����b�	��v9���ٚ΅��r���o����7V3����Jf�+�ӻ�N��br���ܐf�?����X$�n�`9v;� \�,��s��Je���;�䱫�"e?~��0WT^�<���K�@&.��IKՌA��4ҧ4��qߖd��S��Z�E�:�EQ鴏!��g���Zp}��p��!Q[c[�6����/ڇ3��e��}[������R���q��3�*a���s�:���5Q���!���k�X<��V����b���X���8�Km��}L���>��(v}�1��F�(ח�����_M�^t�d�҉�&HZ�4QΛ�d�.<���=�eqZ�Y���]����#��[Lc�9� A���X�p�h˕�	��b����W��W�/��.�:v^�r�C0���r��B�k�a��j��\���5�hO�dK�����ȵ�Y l���7�7��M^J·�0	��,��ݛ��������B�˙a�]�1q�/_��v-�v-0M��TMHD9oD]ڏh�2��e��0��Q>w&J�0�rG�6�~�8x�sh�����׶�\�p�?����J儅�mޛ�;l1�~�}O�;|��,�H(�#*����v���0�x��Tw��3mf��p�)�ph
�DRol�@A�g,�y���ڒ"O�`K-���$���vY �[,`�9s9�7W5��� ���<�DmIT�@m,�ƶNJ.�}���'�e�5#���&�W7R�:�,Sv�%�0WI��
�]�,�!�D� �%Q1�jc���/>����s��)���F=ʡ��!,@iʖVV�/O��pl&v�M�0�ӡ��(��-���-�k��@؂U�@���Ⱥ��j'��!���0f���[]��� ���-�3����[�7u�su�EM	\[��IKՈA��&�Eɨf����f��������#��tXR�V�	�q��a��h���kӾ6W���0��V˕J���m�3��W���L3ե<���	�I�(@i�Ĺ�C�-3�\i���Z����� �-aR�=l�\����zx��
�^Wך*ћ�1{X..�qm���q���l���b93��������ï�K���7��V�x
��n��B��&�;��)�D����i���f1�h�~R*:��	��Ff�;��������;�L��&D�F���@��NaV=�E��Ї��k-�������*�D��= ��Y���X�n���<�\��u�+d
0m������Ǧ0M$�����Az��G�f��.N�|<�0o�\}���16��f�s{�?5���V�n7��J�+�`a�R�����{?��v+�����e��}���\Mp�R��en��[lf�9���S����"���%Q1�jc����E��6��埾��/Cs��YZ�)�K#��0��������Ü��P8����	¦+H<H%\�A��-�k��@؂Uo��:������m�(/�",��=/��P��u���[lf�9e�ڙ�$W�i�3�D�ɤ,,W*5�y��f��U�
sH��/"���4�����Ϊ)��2b���s=b�sw��;|�7���-�
[=l�\����zx�����Z�o7��xѹ�v�/u��4c�2?͠l��z��b=3�5�=Ba	T{�0�^����J儅�m~)��B�T�*zu����m�%�"+�2�K6�+���UÎ�[,��r=f�K}:��\]�Z�9�`��<��V����b�VO�B��<�}w�}���b/�eAğ.��"�rW�!�n���ʜ�V^�swyӋ���ɟbu��\�����{n :Ͼ�tf�����[w�g��y�8ϸ$�Q�CZx׉%�~�bx�s-�}�"���Er+I�&HZ�f$����lZQ�Kt�����*�<�JH���˰��.!v���0�[�5e��;�������=hI�7���ȵ�E l���7	Ƹ|�Zc��[�������!�1	�X�܏�$qԽ����a��Gu9|ԯs������P��F((�Xo�:˃}}5�Bq_;,�)�B}�ʔ]����(K�2-a�X�s�:?�O�ku��W���A���i���jD� �y��R���i~��ݧn^����]�����pJLn��2ʙQ�V����U�� �8�\VqL$-U	�(�ͨ�t�T���:6m3�T+
�0�Pav�6��.�kL�-2�\�^�_k(�3(w�$`K��a�Z�[��ፂ��׷�i�Ko�Q}��E�E���0��4���b���s�RV=�¿���YGR"�Rb�Bi�����b��L*��%�М�f�G+TV*��sX�a%�cE�����՜�9�.G�!Q[�-P˧(�ׯO���	�T k�DE��i�.�~�H�|��b3��(ܕ��I!����HԖD�n��rol_�����-�����)�`��X�*C��벷-	�S"�n���:SV}u�˥��W��d�DmIT�@m,���W��ڦ�p�ʺ�:8,�d���&..�4���v��0��q�s�O}C����%Q����ܛ���֦o�l���)
�"ʒ��~�A��b	3̵�����𯾻��F�j6f1�T���F���D����/q�� ���(����,�4���)�n���G��n������G�:��ȵ�Q l���gz�fu�e�h^��#%� �_�w��\�A��.�����\�k�~ɬ� c1D��$*t[�6�O���P	k��[�\������"��/~�Y��e�n���J�]�6���9�u�o��߄&HZ�4QΛQi8�f��i�Z=���A�n�#/F��L�X��-���J=����R�c�����]�]Vɨ%b%Y���r�G��+�	޻�}�*�Q��F���-V�~��>�cvC�-�3Ü�n�G�=�2�NM.��L--��BT��22ol��:���a);��}��i��kQ�9�f��՜�Yl��[n��v�[DM�߫c��]�Y�J[������,�����{�tq�y��m    �\y����Ȅ�b.3��Z��O����g�-W��v��\�\����{#>��n�}��x6|���)�H ���(���K闊w������aN�]��=�wS_tE�8c!IՌ@`@oC��("��gP��)�w��y����V�_���q��6��~k��q�e�ڡ��	����2n#n�g-���Q$�"���EW(��\w�3)��z��?{,C$Y\�m�M�ԝ�R���4�n1���yo��?u�opa?�DmIT�@m,���[��{���cƺ��P�P�����M��%A������[�a�9}�[�8�׽y�i3�<L$-U	�(����i�k�N�<��uة�o��I�)�~��d�)�_c���aN�\��uW> �3�	���		�(��4�3���������\�I=k@Al&Au/s�;6(��@f��\�)�!w��-rg[0M��Ti$��7�� P�������z�lnAu'��Z)��<f�˱�u��4��F ��� i�� �rބn_��#����]ߞ���ϾD
�����+�������������~=u8/�Z��w�>k����"�1�P���~Q��Dj�͌,��"H.Ӱ��a���`,�n1��:�=�(~����5�iJ<\5�i"�75o`
�g�(]�d��%q\D��YqT������b3̕�����Oj��J�Q̕~#<��V7BA��z3����k韂�����9�A��,OK.�T�Ѥ��1	"�3�a��a�c}�s׍i��N�!I�h 0 �7]M���v�5�Ǯ�>�2���h���Y�����A���a�U���� �5 C��$*t[�6�O<�w�0g��ٸޔ�p��۹y�Ź���'�<&��'���Gɇ"Rv�A�0W�Hw�.�DU��'X���1�$�.+�dT�����x�䬣MVW�O�4���8<��HO�i���}�;e%� �n��� �L�?ᣰ+3QZuYI$�z���d�ǜ���������|Ne=��,	sv�)��0���"��M��93L�Vh�죘�/Mx
��n��B������Y]� Խ�(a�)T�b�jT�E�x���Tf�˳x��Y����,0���j �,C|�t D�4�]%���8Q��ʿ�v��}���̒��b3��]�j�r��{��W(�� W��IKՈA��&TU���<&�����Z�{*�K��ncZ�k���[lc��|���͡���P�!��� i��HD9oF�,��,�x�b7������S��ϓ4v��Pv�}�0g���>���+�jA���'�&HZ�F$��7�K������f�Om�G�wi��>R�P��i�n����ֿU�S_���+�U�njk��r�v[���M�����Zך�0���ks��b�wP�&��,+��4/2�
,a?n:<���u�>~���;���H�F�a�	<����RQ-�����[�ir���q#�j*a���s�:���H����%�^�q�)�ph
�DRol�U�g���GWvXL-�$�@.6_ݫv���b��s.�u�~mnݫ��B�[�4A�R5"A�	���T�)�������AI��F����"]�A��a�I��T�g|n0)Ř���Bi����b���]OJ���jX3�U4,�L٩�w�b_v%���#�a�!5��?t�v�1bv�0���j4ƛ�LG��%��>4-�}��A�j���D�_D�k��-&YF�����c,�t<���j�m%b�����$�Q�H�J�����A
��帯�ӗ���aAqP�j�Z�!(�+��eC�n1���3�B���Ս�:�H�(T�{��V;�-X��f�sQ������K_]�m�ﱚ�a�&ꆳ�L��^�S0�����0����n����̰H����0��)ˏѩ�i'[��t�[��Aq��	�fd'�[G������-v1Ü��z奺����NŘ�O%<��V���H,��-��"b�˴L�7��߭0�~Aξ�?)�ܑK��[d���O���uu�Ms��&�%Q����6�{S[1`m�[7m2����� ��,r��ԛ&K!���b3�����T��\��J$�z��$�>�������c��])i�OQ�Q���=/�<rT	��C�a�,}���Ïw5w�d2e� i��� �rވ^� �<�>��ӗ���SN�8����=O�2��ܱA�-2�\�z�^��_�W�<��-�
������n�����w����Ӟ����P#��w���Y�7a?n<̙;�V������z{m w>�p���@��j����$uu���_=��S�v�����B��;��nu��q�p"��~f�+M@s|����ͯDL��U��D2�g�XI�}L����� �#f����DY\�[u��SR�����xf��|�_� 	�j5ii ��J�x��.+�dTk�XI�}<,y��+.ߴ/��o�{l�q���4��է�O�����bC3̹�~:~��3l�OMn�}���DC�%���y�u��F��\oҪ��\�8�p�cH4�9�mRc�7�;��r%��sum�ß��V���7FȤ�b:12�^b�	F������0�?"��V�X�P_�$KÀK}�n���ƅcF�-�4���?ڗ��CӾ�X/��B���@R5 ��f�C�sL<hvm?�0N�8������ 	cG�T�~�(x��F������A)�os'0O���Z�g��{�����v��}ʑ�IZ�e�'|Pw4,��5�"�3�a�_�{�7��O��/cjB��f�x
��n��B��Fx��Q���iz�_�S���=^tE
Y����w�㳅�-�ZF��u�ߺ�ݮ�2��&"�	����,�Q�[�S��^bsyk��N�f�^)y�y� �\��b 3��,U}�ܺ������԰%��d��r�v[���͂�F��5�xZe,�|��y�����eA��.�!v���0gh�{u��O��������0O���MPPh��_�d���9\�q��I'��)�7�]��|ŕ�LE��b,3̝P�U����Q��M��y
��n��B��&���TT��_���]lT�YZ:rBd~����F��b#3̙t�vk^��O}�;�0�K9�X$U3�a<�{�:G[Lo�=�@�QHv�'����9�m	�q��aM����xJM��$*��ʥ���Ծ@ ����c%6�˲�r?ʓ��B�-1�� 5GSO���r�$jK�bl���"��O�Ѷ���{8r��7N��]^��$J�رH�-1Ü�M}7f>�z�m2��nB,�����0�n�Gt�ږO�m��=y��=Rt���Ir?-�2q��[�b�93�\OU������ryQ0M��T�HD9oB-��S�c<
J<���>s�{�������Q�ʹA�-�1�\)���q:�X݇��<2)�M��Ti$��7�v���y�s�.��u\?���'O"H�T�Ǘs"�]�[��@f�3R����^�OӞ�J�ŋ�]Vɨ%b%Y���m����4^����]f=9,��i���~ ��Ä���	�0��Ź��n�RI�bfǂ�J[����y�Þ�O*��J��Q��q�z���D���b#3�y\�38V:}�A�a�b ��	�i�^�M��q��׭^���|���T��%{���ce8G�p�n����u��C�\.P��]���j��ҿ �xxV?2���!{��E�d�Ƴ:�4u>0��b3�JAoU6huт�"�b ��㍠�4�D'I�qi��۹�wq�
��T@rO�6f`<�m��6f��6��vK�1Ŝ}O���MPPh�s��T�|Jv
D��*��W^T��"�r�Ja���s%j�W�H#&�f1�T��̉ԪWȺ�uN^�����?PFa��e�Q�"ql+v�m̰?>��ã��x�F�Ù#���j�c����Q��9e�m�C�B��A�\'vG��� �7o�~�6x�3J�;����b�\t����US�&�zS���3��κ��.�r�Ga^�)�kZ    �Q'���n1���4��_��y,��W��H�F�a�<A|�9�����9�>�._X���0`7DK�v�M��-�1Ü�y���o��$������+�:C���i���c��מ]�NlD�*SU)�R�QfV;���}	�B�{K��?~�I�$�����sQ�q�A,�����0� ν6���^KRo�Y����͋���,v�1
C�$��kLb�?�xg������a�4	a1�T� ���K�zi�!�Uy�*�}��E��Y�&))v��q�Ʉ]c#�Z�<��lS�b��{oV� j]`a�P9aaa��F\��l�Ew�iZG����Y��~��9M�]�F�+�0a��ˈ�N|Ue��j�}�����sՑ	O���MPPh�� _.�^2�?��]��wb�(�<�}�RN����:�E�w�����}�K	ź~�R?*�@fۇ�IKՈA��t�h�y.6'��x:�4	�"�r���2?�x��k�c��k�m}��F=�$�]�F4A�R5"A�]aJ5�o�*��k�q�D0�)�-S5�p��qȄ�klcĜ�7��Z`��6,�a�-��Bi�����b=uraK�8}�;�կ��@��,O�"
��S5�:��i(Į1�sMDa������3R�S(mu#Z�Z����*�?.�l��Îs�)�$�F5�U�\�B�S1ש�[�r���Cvs�߾��K�C��;W�sB�_ ��}�!BaZg��3F��4���� ���j�\c�Y���sBN�8ĉDmIT@[�6m��z�H��0���E"�:e�e�;t�ƭ���1Y��c1��]W}_���<]ȶ��xcI�@`@o �	�=�� ����<���53v��/�0�B)�~�`1g������w���nO'�}�1����J[���B��<}U?ľUǚR�G~��i�p{�j0�Xy�Ia�XȈ��ݿ��q���B��L�;"Q[�-P�{C������ �Kٗ���ŚuEa�P��85WMR�p#e�XÈ9~�Oe_���Uj(�XZ��-�
���������Xې���]?)+l�\@��$	��O5h	T���q(��F̵�&{:5bs�
uA��b� i��HD9oB�W]k�n�����D0�Q�_�`���"!�f�r-
������P�]���`�,,*G,,l�ބ�L�}�i�\]N[�Ɛ&�Ի���8SB.S!v�������_+}}�@*��	��*�A��&��_Q�s�T�wƄK[���N�l�>�Oث�N3a�Ɉ�N'��S�|��E��6s*�p�)��n
�D��n�`�gL�}φl�݇��A��	��p$Q�(�@��� ���l���^��7�jwa� i�� �rS�G���Mke��R�x�M��<I�0b3��������'v����s���W�����r'�	���	�(7���z���X�]�U�|���M&�����A��b�]\��0®��s�0P��=T�ϕ΃�!�À�IKՄA��4�<+/�j�>eK��q��iȅ{��LӤp�҄]c#�\�z����u=��u��uL$-UQ�Q��ر�)��X=�����$S�Q�o�;�MX�g�(��6F���/�Z�FS�v��IKՀA���װ`��O�uՙI7x�Egq�x�E��� ®1��ơ�;Mŷ��'�K=�Q�{ĢgyI����r��2�0���i�ƅ_�[),t�����m�Ŝ� nO�v����|�2q ���j 0 �7�
R��C�G��K���-�EiEQ��qnj����:�H�5&1b������?7��Y��fľ����j 0 �7����=gt����<t�dy����0N��.a�ƈ��wU��&�4�b�MGy
��NCA�Ś���P�~r|�ZN����_n��&��s�~��M���`�]c0#�z���������d�%B$-U	�(�MH'd������|���uYy�܁^5�Y���)®��s���e���q�)W'����a�%�ɨ{Ģgy�gzʻ�f�q�*׸7Xʒ,J�0������)��܄]c>#���=�׫�2̧{F�<�3�J[�xʇB��&X^L���z��rU��&/�<L�ޱS�x�gE�:��6�b�ܬ�{y�.�n݀\�u#���j�;�@'L$:GW�Щ�T{��&���y\��n�.���Q��klb�\�C�c[��VՍx3mfS�p�)��n
�D��n^�@l��c2�OA���r�`�| [��r�I�2b����Β�X���~�d�o2�IM��THD9oD����(�9(��]�<)R5����]�A�p��<F�y6������/�K��P���&HZ�$��7��YgNƚ�]9����T��z�c	N�kـ�kdľ��]7��5]o��8�i[��ʶ}�'�[�}����p_u����ɼ��<I%<{[d�Qߦ �4a���z*��1�%��1�F�C�T���_]{(�ś��l&YXX.T�XX��	_����2�.�Rq����O箿Baɏ�-
�W���y�d��I�8�M��[����������q(+9��!Q[�-P�{S���z�F�Tz���Ӕ�e�e����&��r�.H�̵fD�51b�I�������é���A���H����0��$�9Ձ��MU^N���r��9��"?
�O�!טd�r7)!�Zwj�b��AC��$*t[�6���������?�v�����G���S �/�X�Z\+t�]c#�
��\+�9Nh!��^!�%Q1�j���0Vw�p+�m�&=��Ld�IY�ćt->���aSs%�j���ar�84Pfl�ƈ�q@,�����0c�uJ�����*?~�kJyD����ˎ��/K���zC�5F1b�8]����"do�gKgI�@`@o �r�pht�y(�{�����A�q��O:;�Iv��ܧN� v�Y���u�w�+B ��"4A�R5 A�X��KS͓�յ�U�T��-B����'��P���}'����\y�a%���AV�<�DmITm�ڸ���V��q�SMF���o� ������0��!B�5�0b������~�n��bup9���#�yo��W�π�e<�0�<��զ��~��[$*�uf��k�eĜ��k���Z}�c�os�H�S(mu#Z�7�[��w�c0�4}���V$a�+߀��r\���\c�Y�}��x��w�h�� �T�L��$*t[�6���v�R!m�����:֛��L�Ї��'ݥ��i:_o�]c
#抉��c]����u�7�&2޾��K�C��;Wx���Y��^zܷ�Z��q��+��?)�щ�])��vF̵�ټ����nMy{o1˛��@R5㍠�m9�sژ�=��������sf~�~�p
�L�v���.F̝��k�Tp(t���߰H�F�a��퐁����27��"K �7������������b.��/�F��\�C]S��P�Bi����b�^��TT�W5MP7x�EP�'�cvy3�E����N�]c'#�:��]N{���'pd3� i�$��7���P�� ��"H��o�X��;��Sv�}��;ab__�s��l�D�S(mu#Z���R����c4�l�6eATQ�.#d��H"���k�d�\���i�"a�JY�@f*Dh���j@� �y#�BI,�y\X�R�U������l�Y5����8�\c�Y��[��A�/��;,�`�4a1�T �a�	� �ѩtJF��;IB)�,v�yQ�
�Pv�=��{��8�3�B��f��'�4%��0M�;�n��!j�v�XꦾnS�2���9�;?	}W85a�o,���{����	d�4�&HZ�$��|�rQR͓Sv��ܭ�$j���~T��|���O	aטȈ�v����"��L��30�iJ,���4Q���O:���3�dp��-�P��a����]��i��s&�+1�"�s�~U/������]�R�}ɢG2����Y^��=ǯ:�ƾ�p>n�ϔ��	�0�bp)���U�Xx#�1��k�r�[uo��xQ�����)��:�����    ��T��$�H�-b
��FY��~A��CG�Rʮ1�s����y��Щ�ť)����Z�kyɢG2����Y^��==T�X�q��Nչ���N�c�ʻ�5%���R®1�s������5F:a�Ņ�ؗ,z$�z����5��y�K����v��Oz�>l���,yGl�U�S�t�;�CĮ1�s��˾��q;<�3	�v�O���PPh����jp-����P�P����yKUw�g{h��A�:jfQ����b���Ԩ�ɴ3A ��a� i�� �r�E}�AYX��Z��C���&Q�Z>�U���U���k,3K����Q�ۥ~K�=��|z��!�ju��;Wx���i�Y����+�����lؐfy�q�j(vq�&I���kLg�܁��e�}	9JL���8ӔX\7�i�^O7��0��g#l�f~�I���Q�]�<s��5H�}����l�r�s��,b�e�C,�����0� ���Gt���
6!>~���E��U#�E�^�1��F�u.������g� s*��-�
������������o�&OE�I��s�b�i��oM�5�0b���P���V��"���r�Rcaa�G�^ȳ�B��6(��d9l���(�w~�)�
P��F#b����z���j��W (f�[)O���PPh��;�t�꟦>���V6���e˃0�� ��/��J
�yK)��PF̹^����4��O���X$U@`@o�g�	�tq��	;C��z�3�Ie��\n��F0R>B�/Qv�Y���,7���P}ִ��4%��0M����F��
�����ӡ)/ۘ!���$�r�Sӝ�q��k�`ľ��jNM�+��D$-UC6+�(7��n��TV��!�N[]���7Yy����r��R5��o|c��8F���4�����YҎ���=-�˅�ۼ7��
�}��L�L����~u��So.hD/$�tl�Sv�͌�+�G};�#�b&���J[���B�59��ԩ������](�-��"�?�#.xDhQaλܔ]c%#�Z��C�W�_��ؽ���L{�*��v�\�;�ݱ�;�!���^�7�r�-�����%(��B�f�x�~���}��+ei�f���������H�F�a�<��!zǪ<>U-T����.�,Psذ���`��r�\A��1�d�)��?���v_�\Cf*Dh���J#A�	�=!�Q�ڦ:C$�ǯ~��U�G��q)��P�y��a��ǈ�>J]ۗ��g��>�	�7���,YXX.TXX����d�e\B�>~y�v�Y���A<5�i�|h~���k,f�ܻu���./�����^��ݱ�W�r�v�v��
�t��	�{͹x��)`�����~�1wBO�tV�Q�4bטψ�����/��oU�|��:���l=�W�r�v�v��
�t�pt|q�93�k�l��~��g\���"���i8Į1�s��:���i�]��R�������\,�*�S�:��^���rH����g������)t'A���%��/���i¾߶X�u|������M,3���9��-�
������}�@=i�m�ޯ����z����=`!(K�IX��b��Y#�{1��Y�GY�jh���窿CQ)��Օ���;�R��!����q����^�C9N����Y�Q�O��]�[�	a�Έ9kF@HA���������U��XX.TNXX��?���w��=�"~��,UӤ0�|~�*�%i�$]�B�k1�!�����Ԟ�F��t�b ���Fp����㘕���s�km�i�����x<5�Y��Tίbטň9#R������{;Ĥ�E� I�@`@o �Cj�s�Q+�l�I
�,����J��\���rʮ1�s����_nM���T/���(��@R5��,`��lxNL���&�c?+
~�*��a:/0�~� )W y	3x}�V�C �	'4A�R5 A��D�T��/��z�:�n2͍|(0��\	5�A���'�]c#�ʢ^7�����U//�@&�:�	���	�(��|W��y�8ۥ�Т���M�(��"�7��]��8�fa��ǈ�vwO����W]�$�dvw	M��Ti$��7�3lgP��)�c��5�-��HMG�$`���(�y�����4F̹B����^��ys�C��P��((�Xo����l�_�iO}�e��'O��/bv	6ڥQ�%|�*e�XȈ9~��)�u_��"�S��⥅,�Bi����b�	6��d�V��]�r����4�$O��]g�vY��Ԕ]c##��/xQo�0���k��I�_�^`a�P9baa��&�X7�d�f>M6s�ొ�4K�$g�Z���̜&C��1���Ǡ�y�Aܼ�H�f �x��M��E:����j?]�[�f}4N�"����z�Kx�����b���Sy)ۣz�|�f�W(�1W0��J[���P��,��#4�.����癲T�.�ƻ0N�D�5f2b.3�燪o���Uy��9���ʺ��r�r���6��{J�]�����^��M�Z�Ia��%v��B"Wta�̈93����~x�/	�rb� i��HD9oB5T~������>���R\~��J\�5�I����#�1�C�ͥ�L�Y]0�iJ,���4Q�TU��U陼�!0|� Q�6�ۮ�.��\�1"�1���g�������Q-��L	)B$-UQ�Ө�j)T�0Q}){�y?�7��*oM�'dB%P�)t����1W���僚s�;�4�XL�-�˅�	ۼ7�3�P��2�GA)�7X^H�8��ڬ� 5�|W�hʾ�bX���T��W(r��#&��H����0���':�O�\��j��ܧ[
J��X8�M	��&F���;���Q6��z�0d� B$-U#Q�P}S/9�y��~�����>��œ���}����Ԁ��	.+!v�����r�C�G] ��5W(N{����v�\�:�ݱ��3CZ�^z���Z��>6T�
���Į8�SW1jʮ��s����s�Wunt�B��IKՀA��F��f7լw:)��ɂH����}R�~��!v�a��31�><������Q�.E$���r�r���6�M�	���,���"�������fq���v�����ę����L�w��H�f �x(_�)M�sJ]��S}���mqR���wxy���Ҟ�]c#�Ly�r���?z���\���3M�Ň�0M��A�k�S��z��z?h�YPV�Y�lZ�$���z�9v�	�~`1������U�oS/�̀[p3$jK�B�j�~oj�za�h���K���[��OS�WY�&QWI�xSar�-f)�{�<�!sw9�:������,,*,,l�ތ�!~Ǿ�p�y���ţ���(.��t�ܚ.k!v����3[�z�_��X@��py2�ڒ���@m�����Y1�6S�p�r��ï)���̏��jܠ�d��v�1��3 ��ɐ~-�����=\`�u��!�j�aw,���K�F�{;	����*/B�J`�X��;�8�]c7#�L�Խ��}�}w{�ҪoV���^`a�P9baa��&����w���z�T�k}P>�;E���k����t�����eט̈���T][��签~�s0d��� i��HD9oB�/p�h�J�r���<�Kr��{�v�a��"�RG�]ʮ��s%dW_���sy�Em���DmIT�@m���3���f�2m����������.�8q,�����b.�\A���G���M��THD��c8T�1�����[Q$q�9��T��\�(\@�5�1b�OO	�x����+�>�O�`>=���#�yo��zf߅)�����q�!/��e<U������;eט̈�v���X;5�K�r#��"4A�R5"A��u�� �y~ٝ�骃B>�7Pxk:|Ҍl��Y�]$�1׷�x+{50?�^N%!�+$Nx
��n��B��F��!��u����2?�(����.���M�5V2b�Ȅ����}}��Ǎ��Y$U����0�J�    �˘��H�*�_dR+۩,�ba��ň�"�����p:���F �Kh���J#A�	���<œΏ��;���7��g�'�N}��$�7a�o,�Z+��c�4��ձ���̊)�)���

-��^n��ika�TY�q��lnt5�A��®��s��4O��\��ʹ�6B�iJ,Ma����'Ez�L�x*��;�M$�z�.
�����v���7N24�v�kw��p��`��)���

-��M�ר�q	N'��c���d�/��bx�9\j®��s�~(��˳><�l�!Q[�-P�{C��`m�>���;+�"LÂ���T��+���kLaĜ9 �gv�[y}� ����DmIT�@m���C��6N6�(�9e���������Ϝ[;�[c����:�ʶ���h�Ph�oV�g]`a�P9`aa��f|����]�(kxs��c]�����?Y���$+b������N�563b�EO���[�<�lsK���P��((�Xo��`-��z�9���Vo�8���u����E��¾�FX̵�vk۪���^��ٯ�d�0Kn�v�\�:�ݱ��3:��^�w��4�m!
�lcR�>B�S߭�Q�kg�\����ޔ�ʼʆ�搣u���B刅�mޛp�
�^��LK	:��WݦHD�Y�$q���\G	��jF�i���~��}U�8{!I�@`@o g(gMt�k��uH+��"O�ރʱ�YϢ�%�?sL���,F̙�r*՜JBT��질�@R5��馳�"���A�S?u���j���YT�~��)�B�4����C��1wzZ(��cy�ˢ:KI�4A�R5֑$�rވ���'����X�q��&a�;5څcM�k�3K9��Z��i�S���D:8�,,*G,,l�ބu�Y�.c��y/hc�yk���H�$u,fv�����#��_��W����M�'�z�ܾ��K��!����T��^��k8v��[0΢$��h�5J�N͈cvW�f�i6K�9�������zm��&Rs)�S(mu

-֛�No�7�qF�-�"�?J����P������5�2b����P7��W_���`a�l�cI�h 0 �7�"~��1�������ą�����R�A�����d�k,cĜ)�L.�ۆDmIT@[�6��U� i֦�rJ���;�>��Gˏ��,L�[R��5v0b�%��X��z�eUB$-U�A�31��ʫ�ӎ�cߵ�OU{���^%q�L��JX�e��lv�}��k���T�%*Ydup�����yS���o8�`�e.��^o���l����15�7��a��$�}�Ű�s��V��ߔU�/��_dHԖD�n�����nj�_d���_� �CW��LYӸȔ�����qSs��w����F̕䥯���S]�Z����H�f �x� &�9�{C�9�`�%�T9gA0�pz�@����7�]c#�r�[��t�?���0l'��IKՀA��Ft�%R���6���ǻ�Ҙ�y"��(��k,c�\Q<]�P���X�@&���IKՀA��FTC�e�yJV�?]��%��wV�S���2U���[��52b�d��j`~�R?^u2������j 0 �7��֭���.�� ��l�#�f����L���,S��p���,F��J��U�V�_*��D �Jc� i��� �r�F�W(�A4O�>��ɓ����I]�G���=i�kLdľy���C�f�tV��0����r�r���6��;A�]ƇJ9}y���1�����@]pfw~���D�����|��K�d��R�����HԖD�n������gR��!�X�	ʸW�1v� 5�PǽX����F~���v�1��36�W3��w��la���#I� ƛ@���a�S�����C��ʥN������r�]vA��1�Wp�,Dߕ��K_?����c=��e��ԏ]b��\�.]h���� �ح2�m�eY�L/��WƎb�7A�5�4b�H�S�����C0��1�Õx
��n��B��Fx=�Iz��!��/�[S�[<t��~�0Quz@�Lq���k�d�\�:A�)@1�My
��n�C����.����k}x�o�a�CU�C��5ld�]c!#������A���#�+��i���J#A�	=?�.8�<.p�շ��<v�y�e�"	�u��������e��5F2b�s]���{��������v��t�u��!�j�aw,��k��{Y����6Y�+�T��|&xN�n��<�w��}�ɰ�3
\�W�ʖ�ΐ^!���b��,�$�~��.�*�t]^����w\��>=�.��v�b���~��	���f���6�ƘF����m��9�e�"1b|z�b � �x(�p��#!I2��~�r�I�)r�����Ջmv�a��+k��x����2P�!&[f1�T��x#x�s�D�+{���U����r?	�"��(;=~IǱcL�5F1b�����z�����aWv��̳�,z$�z����5��,8�R�`�>�O[L�s?˒4���;=�Y��\�C���o����w�=o;��Bi�����b��_���F���Խ\��6k�y�^|��Av���1Į��s����r��?ܮCC��
ᄧP��((�Xo��EY�u%б��&R�Z$[��@�;Pf��7�F�3�=����w�r6C>˙�	���	�(��֑��1�����@I�C�v�w�wA���a�Ȉ9ӥ�����%I�9ӔX��4Q�x�_�FzF+<���K}����&�A�&q�3� �x��P�y��#1wJ��:������nuJ�ٔ��P��F((�Xo�ϐ���?�+�N�ݗM��Џ�"��@�x�N� �k�4K�3���7(�
Q[�Y�M��Ti$��7�xlT�A�lළa�$E�BƻTyX��AB�1���T~����-a� i�� �rS�z ��q����TX���(]�֣�Z]�\�]c#�u������?�C�[�ذH�F�a�|��i�^7*o�~�G>ƻ"�s���ͮ1�s~x��ҩ�'B�G�H�f u<u�,�s�g���>��EE�<�,��ݏHvjz����	�~�`1�]ʾ�*�K��⪮ڗ,z$�z����5x{�r�uX�;SS�T6:V�G�z����Hva�/�ˆ�]cC#�Gi�����۩)��LL
�	���	�(獨�@|
�<�;9�4�y�<�y�dY�1�M�ה�D�52b�̵O��������g�ĵsyk	O���Z�g�	�,�z�O����͋�vi��⮇3��K���v����s�W������p��NV�uD/��\�����{3>�:���^��^^���é��-bR��/�$
�e�=��G��r�]c2#���!R�sW����ی�m8ӔX��4Q�74��V���K�S���}�7\�E �'�)�\)a3��S�o,�@���|��jĳ:�e|���B刅�mޛ��q\�w��f�6�Ydi���t�a�:��	�~�a1��s{��Gյm��IQ�<F��P��4Z�7C�0��?�t����f��&G��8��?uJ���5G�5v2b�-�{	e3��
'#�m!I� ƛ�K�����q��W/����l�t'A�eA�KwQF�!®��s�J=ԝ1�\�TL$-U	�(7[�|� �y�)L����ʓX=7I�O��]�9ø0��B��sf[���w-�2mn.;s�)�84�i�^oh>�u�C��Oײn�~���$�����O�K�<p~f��
��38�o�v�c�f�`��X$U3 �a�_u��9|R�<�&�a�9?�IwY��v�M�������j�^�u���~��v�\����X\ᡎ?���^�6�*�d�g)�<�;��V3����jF̹�Z����[;�p��DmIT�@m�����{tF}��;[8fi�FAPD)�@g;(Φٴ����B����Q�p��j1��@R5 ��&�{?D    �����Y�q�e��J:�y��'��1gM8&�}}xV���-L;��6�˅J���m�3�|еm�]�ǈd`���V�Q82c@Q��`ku���1�i����)�:F��(f1�T� �s��w(�u�5�s����Y�PB���d��*q�m�]c#��Uv��2�����7�le�&HZ�f$��HG�P��2~w �\���&�A��ԑE��kLc�?���Wc���C�J�US�4��S(muZ�7��D,��G(�<�>�C���H�K�=���<L]�a�̈���{S�O�������0d<mB$-U#Q�����D�z{����C�m�e�\_���t(��Q�e�m����b��������/P�Q���{�-:�
�C.Վ��X\��]`Һ�~�OO}�����[Xy���|�rB�{��k�f�\�����8�� W�ݐ�-�
h������!�X۔�D�'���V��y�@1���"�Ln�]c#��0�.W}<�^�껄!�Y"4A�R�� �rބ���P���ro��	|��kB�/�X�3�|K�.'��k�c�\��T��F�#�Y$U3 �aƕ BtNO�CSU&�����(M��Oy�CW~®1�s���R��?� 1 L<D��$*��@m�����Q�k����-���>���Aq�.����F��k�aĜU��򡺞��U��k������Ъ�5�.ɩ��Ĳ��ʛ�.p^���x��\���&)��"�L6)2�X�����kLi�?�Ǫ>��_�W���"�V�҈���ۼg�3�̾�-W���t�6>D���-b~���ʻ(s%¾�`X�e����|��Z�ꃭ,f�0&���;�R-t�cq��;���-�5�}Wo0�-�dd���������(®���F������_�C������P��&((�Xo�mQ?T���w�����J<]?]*vq\�.k�d�\�y���$�k�� ���	M��Ti$��7��d�桢Jd���O�%V����إ~k�c�\.��Z7���	�])fA�S(mu#Z�7��U���!�`��Y�bQ�z�Ϣ��tv-v������_���}b�@�1�	��*�A��&�Y�����k�ܪO��Xmp��,K���L�"�£.!v����3���i�.��!Q[�-P���_J]5�h�����X��P�O�n&��O��pB�w��9�Aގ�ou�Z�� �H�f ū����N�}�����O�(d^aj�� ���(��F̵��W������݊!��Mh���jB� �y}�S]T�h8�յ���}�bO��(��3Ý/V�)��Qv�����#S����$�����P�Bi����b�sX��?mn-�<mⵅA�ϦYWc�(��q�ke�?�_���s��z��M��L�&HZ� 	�(����*o�j��z�z�*�� �"��$��s�8�i9?;�\c�Y� <�v�<����&<��V7BA��z#����D��C>�p� L�,V�#�k��~:?E�]c$#���`S������0:����J[� ��M� Au��)d�f���y*�"��J�Ƶ���_'�S�R���?^����g=�A`i#L��$*T[�6���v��6=��2��M|8��a���.�����v�b�X(���VU�J~�`"Q[�-P�{C[��ژL�8�Q)*��� ���|�SA�5�0b�ݢ�S_��9���.�)���

-vʩt�e"���Hе쟪M2�QZ�~Q���Ո�a8�HQv����k����k�?B�d�`�,~bI�h 0 �7�vZ����y��k�\���2H�&���?���<�=)��*F��s�֗jBq9t�a���b�*�)���

-����Oe%K���o�����*�i�mk�A����]l�����]c-#���4��v(f�?��P��4Z���ܾ����_}��4o�"Đ��=L��\}���v����sG�X� �	`Xtq�r�%�ɨ�zĢgy��\8?�4�����C�Ng�	��i˒@o
1BA��մɱ�@���9~��x����K�a�%Q���q�7�����M�s�/ȰB�'v�T��r��F̹� �����g��fup�	�˅�ۼ7�/:��u��`�]���"	� H��;���5J� px�]c,#�
tl�R�ZOÚ�L�#�	��*�A��&t�ڇT��5�x��8I��)���Q��K�2b�ǈ��s�+�W�I�N��m��Ⱥ��r�r���6�M��Ʋ�2�x�/���h��dE�f2��)�9�`n���?�G~��k;V������\}J�S(muZ�7�
JY��l$�l�~���(��;�<ĭ��$��v��TC�w���"�Mi1M��T�HD9o@�8�l�ϕ�7xѥ��j�ϖ��S�涄]c#��9�����_ʶ.�\�k�F��DO���)((�X�۳\K��������$N�0e�GP�)H|ǚ*a�o+,��{9q�P?#.4�H�f �xx8�8�s8��xkó4����1Rd��l5� 
7ű#:eטƈ��5<��^^*�+��	�DmIT�@m���SǼ��qe��L�$�)2?.�8d�?P�)՟(��F��UW����J��W�nv�]ۗ,z$���E��o�y�}����Rߩy�6k�P�&�}�T��$�c�~8&��o�r�-����ڏUl�.v�^`a�P9`aa��f�g�w�s4^�m�L35M�Ք�ut�8w>l�]c,#�:�50������+cQ̜��<��V7@A��zl ���o��q*Z��R�� cD��S�;洄]c-#�
p�۪-u�pĐ	q$4A�R5"A�]��H4_���zs�a���O�g�����x�~��0'����Ŝ�����]yQ�1�����[W�r�Vw�cq��:����^h�a�,��'+��,�"�l�� K#�y0ʮ���Ff�z��b���Y$U3 �a�٭����P�$Kô���j��0I#�GN�561bnG�r����U//�$=�H��;�R��v��
o��{p ��ո��Er�R �?���,��(��tF��s��:����w�6������!�4�Ԙ{<h<��Yv�pvз��O��u��Ш��w%���6b�H�sW��/Ր�gh�IF�4%�Ma�����3�1Cz�����6K;0q�G��*��Đk0K}3���?o0[E���l Q[C[�6��t[��bm�v��GȄ��6B��/�jԊ0\�#�]c
#�zʳrf��;]�#�bb1�T� ����(�SVu���d���0�(�"nؓ�_��cs��7	�r}����)O���Eݖ�����]̧|qɢG2����Y^��=g��������ׇ��'���th����P�BY1ȹ��d�E�Z�&�K1���g�=���,͇IԖD�����=ݾ�ԋk��ٺ��S���z�>=t��T&�� VNrț$����@�5&1b���}}��_�����@R5#f�������^ʾ<�O�_�V6I����Tj���w|�����3�Ϲ��Ou��|f���1$jK�bh����nWCU4�mz@^�^��� �`F����R��H*®1�s}t�����:<w_��!�S�Y$U����0��?�c�u�d��@��� !���A��1�!��6�]c#��9�ˇ���^���R�(f
�S�Bi�((�X��r����������f�O}e�?��O}�S��]�/�}����3�z�w��e�O��r_b� i�� �rވt���Uy���>���1$��c.�-�I�Ŏ�=a��ň��������3�)��:��B�E��2[���K�y{��ˑ�"�Ej��(�I�5�2b�e��P�{���$��%L�S(muZ�7����%�?%Ȥ;lo�P}"��gs��a�s?��n�]c+#�Z;�.% ��j�an���[��P��F((�Xo�_o�J��'n��	��pl�
�<�R���_�i�Ůp®1�s�L�[���oe�� Z
  ���e:1O���PPh���C�N��%��%��FGY���W`F�#'e��Ȉ����l���?O��E�J�:�Ϻ��r�r���6�͸��V��v���S��k�aU�o�"��b@�5�2b��S٥����.�#��f�Ǿ��K�C��;Wx����[�k�7���n+����%Ve�P�uS5�l��8	Ǆ���s=d��v���T_/��y��+��T;v�cq�7wh�cq�i�n����G�nI����s�l�p��e7Į��s��צl�����{�]$�
�C.�N��X\1' ,����^�9W�Sw��i��a�y:|��Lg�.N��Q#��klh��NH����%,�a�: ��@R5#����-�sCxinOz�Ҕ�-�h�_$@�{��.2?t8�]c#��9���/����}'���$jK�bh����n�g��"��ʣ5���uG��Qr�r4��e	��F���kJX�����!H��`^v���ۼg��÷�2/����|8N�"�H,�XE�<糃�5�2b���[y,�ۋ�����D1��Dy
��n��B��4��p0Ϻ���I�M��<�8��X����ʱ�N���
����[q�u���V�7ԛ��<Y�v�\�:�ݱ��35lP-�5!gB}�.�,a$P�5��9W��<�!�]c:#�s�A���qQ8�G17�"<��V7@A��z|x�s,���=w��i��Kyw�C�ev8#Xnp>^�]c##��e���Z�-��j�B���m���;�R��!�����@���^�&0J����� .�,��{j��H�ñ�K�5�3bn��v��/��E����9����yo�8��2�gJ�n0�J �:T\��B6\��A�5�2b����/���I�d������5���;�R��!����h��ֽ_�z|��.����Y�aVD|�_������`®1��FtX���<T>w�p�������v�\����X\ᡎ�<F��{M�_�Y;W�Z�<�m|�4��]r[���(��57#��1g��k���zP� �=� �y�IKՈA�����^0:��~�o�4M�<��X�b$~9>d�}�����R[�!�Oy=�kG�hw\ɺ��K�C��;Wx���t,�5�N1Q�[XNu%��-�A9^��]c9#�Z!�].U����Pz�@f���IKՈA���g�T�yR��S}UO���Y��d�Vp�]��y�x�v�}���G�u����+����S�&HZ� 	�(��诓>с5�'���,7��6�O�q��'��]�Z;�\c�Yʹ�����q�c}xn*X�Ř[�%<��V7BA��z#<Uzi��&Ȥχ�Y�G�R9��[�2e���!v�����!�����X��IՌ@`@�ay�|���9�����[�1).H?̸��bWDA�Z�%��1g���T����!�)���=\2/�
�C.Վ��X\���]����5Nv�7�������3����E;�=)�n�1�~Qz�_����7���G,�����0��p����u��K�ٶx����#�.p3%5�a�8b�	��*��kW�k������po0�!�DmIT�@m�������Ʒ���k�dY�C�1�S�ù5�A�� ��k�Z5����\��1�V�b ����)�N�IW�/�e܇ڕ��Qj���kx�]c#�*�r)�üފS��H�F�a�������AӪm�a�z��j��0pe���1�wV�F}b��ǻr�0d�3B$-U#Q��D]Z7�Ј15�&;��$�8�a�2,��.�]c#�\�9V��J����=��E�S(mu ��x��B�?��BѪ�r<);ey�[�7v~���d��}����s�z�./��כ�s9��P�� 

-�3�Y'����!1��{́�Gj���G�Ԁi�Ď7a�XɈ�6��˩������V}oV�}d]`a�P�����{�Pc̾��D%�?~�GMO�4KS��UC����?8M�5v3bN?��������'�i���J#A�	`�jװ�T���x||�ke�$R�T��UC���v<e��ǈ��_��C���7��9�n]`a�P9baa��&|����2���1	���_��I�V�U#A���l�]c.#��6��5�\Ab�\ӆDmITm�ڸ���s5��t��#��Qo�F�v����ɓ g�������$N�5֘�\k�����*(�u�Ŭd/.Y�HF��#=�kP�W�oy�a���^��C}��A~��l�_5�E���B�+1�'����_n���_(��b1�T��x#�4�5�u����m�XA�U��9��;���(�~�`1�W���w�E����/�	��*�A��&t�!�<�¨�zi�����6�"�(�Îd$�d�]c#�>Q�!7�c�l��=OH.��\������{#>��IBr��5�f��Su٦JEqe[�Jn��Q�x�v�Ō�����clup��������m'0���b�]�e=�l��-R*���wBi�ص���5&���_�ת���ݫ+�}�0M��Ti$��7��±�)�n(��p�VZ������?����;:      �      x��ْ�ڒ ���a�˺�,v��]�f�<�$@���4�$Ʋ�v?�>��Ώ]_�C"��s�*���� -����}�~�����a�[l���b�cG�t�zq=��4��A�ĉ�8��s��_�BS8�����?��$S�㯧?p�C[j��~��䏿�8}�bO�4�M�?����0T��~q0��s7� w�xv� ��`q�&N���O�ͽ��0I�@�<��	�ǣ�$������$� ć亚w��NL &��4��7=n��+��A��䇪����}�,`)�EX`	���h�ay Np��ԏ��?.|�"�j���/8�`<s
�X�f�:@��6�f��-$ċ!Y�4�^`gb����\�J)4�RWS�{k�{o;!Y�E�V�{����|�c�Bw3G��n)�B�
�X����s��㺽Ҝ��y�����|~�e2bp?�����N���纳H	�'����@�2�ߒ�VJ��2mJD+�J��t G��6�5st E��i�!�>�A�qt�0iӁK�8A��Q>aӦ�Q!��A�&bp?����cW�L�pD�b��U�����j'�&T��P~��śۆ�l^��u�lG}Qlsnhk���N��M$��0e�9�*|�٘�m>2u�~L���sEr��}?�4H��v���	���L �,��N]�j��n�@K��%�־��
A3���$.�d����u���8������,ɨ���7�݁ �=r<͑T�t�3��u}�y�'�y��n�O���*�R�E���==����G}}x~�)���pu�b&�$) ��S�W�ƶ���;�X�RG���d���^�ɾ��|DvL�Ŀ���me"���v�[������D � ���j' ��u
q��Z"��s��M;]��KI�ۑ$n�g�uݚ�������_��V�$U3�aʨ��fm,��i�~��.uE�Ih���+�W��M�� 8���P!],�PW�U@"�uP@�5��4r@��ݡ=*3{�� N��{U���^Iҍ��]���,<�n�%�>:�/3�-/o6�H��@�"�ZI�u�\QI�fB�3%gs���^��W��
����N�;���i}'K�l��K=�:�����L`,�P7��q�#�D|Nb$lpJ�W<�3��%Rr�H�9��)��Ƌ���P�#Inlw�f~���e~�V�����jw��6'Uڞ��Qr�P���Ɣ�����/�ll�b*�FwF�ux*��:��~�j0���Am�f5�RY����'���b�[��z����sB��je��ez�fr|�6�t�C�>>���B�ǧ2�1p�)��ƛɛ�iL�N�9?]�b�4�����mW�R�y=;~���W�Y����>a��|Ƀu�w�A��=�זqC-�>�y�P�����B��d_���\U=�Иا��N����XV�����|I��gR_T�{F��jYX �=m�;_�NL0�[-7�ᠶ-^��zw���{�=�����=Ź8PW2Y���#�~�
�L��!��T��[-	��_}�������J���{�M+e�~��*��lnC���|s��e�w����ɭ��6Ѐ�ަY�Z���ʵ�X���?j�ԧ�F�;��>P���́&���\3{\���۴�j�{,�ɶ>�a�F����s\![L��]պ�x���s�rI�\�aV����oĲ��y���(�[G��V��ذ_sa]W!s�Ө䰳�6'�mr<�Y5���}��> ��O�WÒ*-f80y빀�Q�O���j�^7
Y��i��{3�l�X�
�1^�,aR�_����7m�2�"^�	
d���ݹr�Af�`[!�ec� �\#�>���aO�͕�Ϯv��<mA_|��2�y�t!��z�6e��^<ă=B�T�5�l<��-� �+ҕ�v�SHn8�W6(���� �N��J�nNWKy;oI��fK�j�ٴ}y���&z>\�n�!���W����\��˃�Z(�!�M_�}]����?UȆ���n��>����R&\Oݦ��F�}e0��Nv"�q_v� o,�ϐ��\40��t^��k:9钃�hn�M5�w.+���8��j��t�!��1<oV�O<���^`���J��� �~O|@V*�'��
x�C�'��k�_����^7Ĭݜf����&��q�ox����Zp�`7(�s�Ҷ��,q�n�7W'=��D�M���9�Ѝ��ۚ�V�`�C�s�l�_��D��;���Bdt�*��y�+hO�qS���� �K�M�g �~_���˃�R���j��I-�r��DKp�ݳ�'�9��#z�}]���+��xg�y9��_(�����C<A����귗���>��_������n~�mD�6y-d���g��g�7�[v��mX��\���ּ�ɿv��|}�����>�W���ϴ�y�"��ǲ�p�H$��E�[\:�
��`'ǭ���} �-M�~����s��5�gi��W�6�!�4r��G��}!��ߠ��\8Ț�� �/�+�\��s[�(����U�S�����چ.#{/��h��w��v�l�o�Cx��h��8����@�`+�8؊�Է��Nݗ����aF0���P72������HP|�l2�w�l�{��B��~�=����>'���~Cs.�
_�f���-e�W�g�z��K����`?<|Rd�A�Ԃ��u#��B,"�� ������^*�9�q���zt&�p.�?�z;��8>��p�7 su� �(�4���_;[Ui�2Ѧ����������^�����M����$.�sҥk�	>Es��C����6�@r
8��\��}��R}~�}��}�>�Y6��4�oS��>1���w~������Ѐ���o`׾��3Z~�1O�� �b,���s��{�ج���cX�>��c^����ٿ�׭О������@w����Mг@�S���y��J����{fQ�G�	�g�m�׮1e�H���?�7��rрi�{���3��D��F1AHo����_�~"aO"c�C|ؕJ�P�g~9�����ɏq�>�9�k?v����/��5&�!n+��(�kCY����|������_���g�+o|�y��O���ow��W~>]�~�X�pY����wz���*���,�1������)ġd��F�k���aS��۰>|�!x _�ӑ�[þ�<�,��N�P�~�� �=��y|�*ġ��ɕ�}���������G��	�isy���q'յ���_\�)� Wu6i�bC�'�'|;0=����9�ǽ?���d�Vl�zae3�8?R%��Sܑ�ֽ������H����a��s��ԗ��܅�F����O��ei�ۗX�p�������}��z6ʿI�#�}����^�����9�#|N�;˞�s('�(��,��7D�u�rS w�����pٓC׃أfI_��D�n��$6�f}�k�c�9��)l@��(_��s�2��W�r�}XhjP~�;[�U�x�*�'�}|Q�������!�� �ZJ܏˔<nJ��ތ�O}�����t���e�������D�y#EC���!Qr��g��J��ZO�\#�V�T[�����cl�>�rQ��t���$�\�\~��]xfk|�g�8���5'��a2�e>/�����\XͯA��P�a���o�w�az��:���.AN�*Y:�������.v�g��<}�_b�޽
~�ⴃ��Q=��V�xr��qc���U��G-Л}�	����_����fw�;]�5��}Mq�c:�R��}>��n�Gg�NC<VV�e&���P�os�����lx�*->������,���!�f3�By�n��d<�7D��#rv��/�Z���f��p��ԧ����w���˳����z"���d{�ߡu��_�N\��:������%^G�ǎ��J�\L�Oa����;����o��Q��F�[7��p_�K�:��U�^�%��=>�@5��(����9    �@��?��5���Y@�^��/�-�|�Oh����=�.g{/�.��w4�N�_�$6��6��j2������d��&s����$��7����d�͵��4r��<�����sj���)�r��7v�7�j|>��͜�j��Lc�xvqilN�4�"R��?�+�����=9ѫc�[c��b��Ml���|��q�ݵ���q�9�c����3ߙϻ�^E�Q�/wIw�W1��
�s�u�_Vr������σ'�i��s_}ଇ����i_��}�պ�}p;�UF}����bG���N��}#�}�b�o0�{b�̡��W{��N4¡���s8��F����w��̋ݦg|�N])��X?���}����A��+m��=�շ��9�����-����g�C���\�x�a����z�>��.�!�ֺ)'x�ލy�P>�<������7�}x�[�_G}���T.�dR��K&S��v?���k5�\�m#�6^̟%��]4��/�|�����':����k��h�R��sZo�Ӓ��	sE��G����������?�<۞_�<��q�~�*�|���@ߗj)����҇3@�N*�}U�fby}u�T���5~���b:>��<�y{���ײ����ɜ!���g�S��=��e|&D�M�47׫G|=��#{�X%D��ow��*�x��Ar~8S��Xw�C�/B��1h����j��߀��f��po�t�#�3�#бټ��$���|(�ܝ��b��$<sy7|y~�R���^�]\p'��q��qs���ڵ���wDg�]��6�O]������{h��-���Ħ�5ʉ�ڎr�A-�3������14��=}?O���5߱J����P~q�b.��ɫD[˵���\����Eս���J���vVw�H���e�{~��BvژUh@v����߈yA���3��z���$ɱ7�}}>�<��Y�/g�Q�a5/.�V����5|ľ�-8��:�o�����c�g�G���a�V��k~*��5��Gk�����{ui��������������E}S��D��U��_z����~��g]�C��O�z���ү�6����kz����_��{iwq����w1����=Mb{�����'�8��{E�����8��3y?��H>�'x�?�ln�Q�8�}t��p=�����[(��𙆆v�Qv4�ӭ1�y�@�U���������iӔL�o�]r�J"Un:��D���%� ���f��dJv�sg!O5�;F,�|]2tW��J]4�������&�����=C;FVF9?�|z<�F�ޤ�v�1�!��V� O���3[C�>���$�w��p<µ�kۜf-�-��Z8���ښ�YO���c�q=�0�����=������������������7�slk��
h<�GS�Y���@eW�~�I���.�T]�<I���f�<5��������4�F�h�gn�y����[�����-��$o�21 Q��F���\�� �����>7���>5$�x� Z�	��@B�{�H���>p��[#	��ǖ�����6g�@Z�E&�rV����u7{�6��z���sԓL]�}ܽ���%D���J�$���d���]8�?���&��Ц	إ��N����/D��`�RC?�X�KF�W"N�n���~�r��hyd)A�kOYk� �O����I��'�`��"w�!��l�Dƭ���8��Ԝ��A`�`�/��.x�o�rWY���Ł]S��+b�h�9�E�Zx@^�j���G�"z;D2�9�)5��"�6�E}�o�W#̃jO-< �	�-ۯAT{j�+u��i�~�,��6K�k���Z��X�0K[hOş��Ϫ��Øp�[������1D�9��I�`���V�.N(������؁�r5C����/6+�p��W��뷛�Lm���գ��/aq� �L�+�����m%�G�w6(5��p�#�VW3�e�����M�}��Rj�_�Ǜ�_J ��J� Wx��f�ע�-5��&�e�NQ�h�vD	͕n�YN�#�&ͷS`jƺ�#0[{C�/ &�:*5Ǘ���6!5�B4��Լ_�
�7Us��6oH���	����K_��F� �PddM�ܹ� ��!�3�/S��k|�x��k	��~�F�+��qO�i��槿�'�?'��߀:K�����B�Gg���^掍�R�-��U&��04��](����I�Ѿ �Ba,N����b��~ &�K4A���=��Z����L��rݎ1�J����B&]�A"�yzsƒ���{o�y�婠����j����R��	k��V����SW>P��񚰎4��̅DP���O���S���YO~�/H���P`x=�1�1�x��$)Zzwy�I]��cǿ�zB�e;�O0� ������7���P�|�r U�1��|�!�	�Dq�L���c�~���d��
N�g���4٧��H����Z���[� �:���N�ՁR�f��qQ�7�?5���3eO�����E .�cMP�u�a}O{��/����f��<�5�
c�=u|��j�d�O�"�1��6�?��R#mb�-j~��8���b��9�߹W���=	�Z�������܄)�Vj^?so������=*��R�'��|_�Ʈ7g���U��)���N{ƃQ��I�Md�m�x0��%Lj�"sGFw��O���\(��(���B�ɛh�E~@Ӗ���O���ӻ�Ip���̿W�Y�f�+t�H�hh�������/_2�O����F�&���ޓ�Ξ��� ?���|�O�KP���h��M�L��e��(D<%`�8� ����̽]�ڙ��EX��a�RC���	�]��1貰;���N��/@��N�ad��x<�����7�wtL��'GS4}	�F���!8��Bs��%Y�6�܎W�Yp�+�"�q����Hw��/`6� I�{{n5׶l8ۓ���.�C���OU��}I�t��2	L����۟�hd��Ss��;:�O��
�D-h`4�IRUM��H,�V�_����-��L��y���7�B�8ES�F���_4\����+�g!�wi4�����}�
��}��G�~N����iOx0�{���6$<Yv%5d�(��G��Z�~��eC1�A�W��d�B��!����f<ۚ�?�CH�!5���,~������@4R�����a��^"��G��ӰM��� �_�?��n����uxp�]�1x��[��}G��]���u��O��I��l�9k6gQ��,G���06x5w^O���&��d��`�tx���xj(����W��uQ��8"O�	@���p�ׂ�wu)l⒜͡����Oh=d{!��RsZ���SA��RC�w��o�* i6&5�S��")���o BWd+����Iح԰���~޾��@�s�Q��:|h��OS_�2��v���]���h�}Sq��/([�+�Р��=�I*
}d?ӵ�Y�?K�cH7A	�@)cY;yyY����{w�<��S
4H�����,�C����$Vb׌j�/ k��*=�� R�;��%����m�6b؊dLl�k�(J���G���C�@�(ܻe@UD:A�:wt��d�/���v?F�F���^��%	��⪊@�
]2	BU>,�Aj�d�dy����/��)Y{Q"��3�gH�SRM������Մ�5C�ˢ�Ї�0"H��Hw���>WNݱ��?F�PjJ�H�}�O��O�ON��.���*�YAwB���๗�I�{�>��+���r��X��w�O�\`0���Bw4�O����D�{v�\�*1���3�7%ز����a�۽���D0��"��rjj(krQ+�؆����?��号~�����C��*��h���v��>I�J5۸�H�Fz�4�ᡲ�5H#i�@ïli�	,�`'���I������Z1�M�eh���i']��}��������Z�x���>D��$<2��$_��H�	���!Y��L�    �~f߫HI�z�0<Fs�v�@6,�I�ŶF:x�s=D,��p	|dp=���)��v�˧�44ob����
O�=0�vܴ�I��ul�/n#NR4O%�F4��tE���$!�%�c���Y�/�mD��H�~�6&q��_�E����v��#=�{w1�Y���]��*r
��ZR�H?�]Lbv���-��Z�T`�����I�7�_7��Ue�[$ID_B y�ڲ�:���t��r�p<s��cG�<���c�!W���9�N;��aw�]��� ��D�|%�^�W���~"&�Y"������I��!X�)Yg�N���fi�섬�����p���?�%��� ���A����=po'�7�+����_<(��Bτ<�A���/YRf�;<�����^x�{w��������D6�p��^�H�@$�%b�C�ߑ�9���jW��*DD��)g'!���lX1\��BP��2��"%�D�u�Ǣ🸽����J��^b�,�ڵg�U�G��������d�t���m��Ŀ����Np
�'�e,�ڪjh'�4�4���8�����4�[8G��(�a��3��^¿���0ټ�5'1J�d,I�㏜�*Y;��r���bF'��8��*��;����z�������ӧ�K��¾�r�K8�����(w�1�t��}��f�`��u�	���t7�^A�X߅ ���p0����Q�{n؇b�r/��/��.q���R�-D�א(�~�M��H��Rx�g�V
X )Q�48IS��M���א!N)�Oc��2�ғH7��˻�^��� q���8����$��'M\f�E�Spp" e��ۛ'aZ�E'&O�����A�,DRא(N�R	.�H��H_|.lO�@���s�]��a���O!"N���y>p�x����S��L���G�^�q�*�Kye-�%���T1h�aR�-�^#jD�2�������XX��B;�5P�+͹�D'ٺ�Jq����
@��D7���iB�3og?����G#��샢�勵�-I$��8��`4͝��}���v�_��B�@��)pA����:������$������K���������<~	��㢽�|�^[{���x�Խ�bT�~Z�����h@r�d�(2�ǔ�(�*�g�W<n|�O��{�I4�9�c�8G�0<2T߁tF�%�� 4�cI�P���O��!T�:�nm�;�����3}��X�ţ�Т%�x6��hc�8F�@C�{�����`�����(�!�x���{,B�k�o��61h]�~\�����6��%�x���hK��8C^ �v�9n�HR��A�r�yD{��L۸TH�1��mX`]� /m���]2$4E���6.�.���e���,��Ga��zK]%#��:#�<�uy�� ��0^����;c^���Kq���M�d�
���&&��X�ρd~��8��
����� X,���� ~��a��,N.�"��-��`}aCp���8;�ָ}[��A��'�� ���e���)��Kf�E���Ā��#�q6 �J����R���h~B�v�ӈ1�-�ǧd�1�&�A��FS�A�d��2\|\�-xq�gq������~S�w0�Z��gp��oɑ�	J���bwژנ��*�$��P�@�p��0�]%��a�y�x1_��'�=�xM�c���g'p�.�����X[1�x!��-�qF� ��b6u=�;cv�O��{q� x���IB!���c��q���nX��)"�s�I� a�;L[�+`]�8���O��Z��cW�,~]l��Mҍ��'	�s�$ę�G�����įC�~�^\$���n��1��uY�����n�^��½��4����r�yF;BHc��Cɤۡ��<��'� ,`|ے����"(��	�ݑU�@O��ڤ���2��wv-s!w�-xqvi���Wj1��^J�~R�I 	�:/3���]�0�X���3����j
7�DbA�=߂g
H�e�D�Z8�7n?a	�v33֥I��fq���r^q4����8K@�)�B���qن�U�c�kú,�rAqH�f��Fp,u�&��[���a4v�"�·JV�o�Ә��h]�f/9F��|�Z�ba��;��ΰ.ϲ����24�(�]bf�/N���ȰW���� qo�%���[��`uy��Qu5�� �:��x�`�����~���«�\D���E�;�!NS�_��玾���w��!�;�6NS4�r�U
���
�#�3e�eP#��0��b`�{���1#`a]�����/�g�����1CZa]�!νo��1��"Pp���1����8���2�� �[b��ºǟ�q�:{�z�P����������� �q��	�B���-�r�<~[Eh� 6�c�{8���Q������D��$u�ӗ��>��kw.X�0#������Kz8^��Y�N8��X��?=�
��v׽�p����cl;�71��A�Ga�t��?Xi7`�?��W�:� �/�ʼ��G��P�	_P��e������,���p�����W��X[,_ŜI�v���j��Q��f��*�r�>��u��D�N8қ��_���\���l��.�Yr��y��p�ҧ��r�}�*�&j�ټ�h���
�ǭ�0���;��l�tk��Z�5�3��('sU{"�_��e�z��uQ{/1�ɸ$}�f���jz}�9�U���4gҚ����BŊ�5Z�fٺSܶ��-��3�8Y����΅��\�����n,��Fn@�9������;�1>3n�n��l��J{n��g�X\��Ƥ�������oš1v��{�灊S%3��4��7�Xj�>�v��ζWt��������uL5O��bq�Z���k�"�mV����ٰbfU��a�I��X[�e�}&����� �ת�m�$�XY�B��nޫ����-�*�b��A���Բ<����a�5u��k4G���rac�ߤB��M�7jgI���lu����i.�>���g/߭�J����{Ublb�kP5J/�-ubHL߷�:�Ӻ�u����/Ċ�cV��'�=��,�7�[l�;�����X�vb��ES$+��7T�>�v� t<�"^�������,_�9���u�d��쵌9���i,	,;�̫�9��]�ܵ�������:��p�m�҆�x#�kP���y���+�N�������3'��Ta�؋�P���lV��ƫ��z4U|��Yn�qs2��W�z��W�d�.���uo3m5|5�+�(c�sԼ%7k�𵲬ۂ��,�����{�=;]����O����^���P����sfÕ�G�*�Δ�b�}��9٬4[D��([h����nw�㌗����fhL��s��g��m�.5���L�Ǔ��&��>3*��P#_)s�=���W���^��Q*	UM�;N���7L����[s���0�1� ��Ֆ_8m�U:���^��k�4��'pe��8㼭��IԶz�I�Ƃ���-�/�Gק��*�b~�Qλ4�M]Y*q�5�����P4�;�����k���eS3_"���I��y�׺�d{�<�]*݉�VkF��sJ��'��خQ�"�W���5���0Eƪ-�Ō0Ԟ��oX�0aǃ���_�{�7�*,se_̇����kNY�cy ���Vl:C{j,X�sR�+�P(gZ��9>b��	׭J��r��Wu1ͬD�]xmoVq���zq��6��%��j��V��9�M��+X�O���Ө������nW'�������[��L���9�c+6ߚv��yG�-uY{��_�Cu֛ܳ���c��
�\��>id��߅�"n�i�}e��;��3&�������7����FX�,���Z�x����k�p&ǊK�7!,u�+{�Eo��j�q8�<7>+&�4��[X�V��o�.��%[�v6�(;#��ߨ1�2����\�2��4,�3%�h��YBb��ܘ�+&ȥ�    �l��;�P�/LK�2i�3��s�d��J�����&Q?��lkԼQ~��uWLo�OUA��Z�l+�Zn���ת�*a�7/c��USi�?�;álx9��U+�7��v���j�Ky=������]l�_߆�Z���PTt�m%w�J��[֊�����J�[����%T�Z����ލ�5J�i���͒�=�,Mڹju�|kF��$�n�Y~nt���j�?�����Q~K�猬�^�3}��ϫ7���Z?��m�ӫ�\�R��,�U3<��f����5�e\${�y�r]�)���3F/�U�5�᳎�.�s���XQWYrʔ����VH�6,�B�ג<���M�%~��.h�WuF�U�y�L��V�&��.��^��ܛ�y�o�Am�L�u�~�f�3a�X�b��p��<]��ں�ZNk�B���f������F��g�3.�ۣ-f[�*�u�U9s��D1�铅��kKG}~_NQ[a��b�&�ʭN�x��2�^��5�m�����V$I��ٶ�h�E�*�o�����ъ�]n;�~�ߺ�\��z1�K���������aw��
�k��L����y�!J�R�����_��&�IK���\K��h�z��5��@ZI����ڝL[����TZBOp��0}�y�X�����%��g�*�P�d�x{֘������J|i���&ؠ����7.㾖���k��ɨ���>3�{ͨ2�s݊�Y ��[��/�Kb2%��K��35���~�e*3���s����d߆z�~�9ڀ6fScР�Cw].����h�-Ol-��\vg��H��B�S�;��-�ެy���^�0�����n�p�æ�3fm|��Tm���-��u�nn�� u�g�pף1��Y����������o�ۂ<\����d��޺!��t��\����]�S��U�1j����庲��������zv��ݠ2�fg1���-�q�)P%��S��+p�r�&���j+�Xzƌ�'6�z������nK�Zv��t�q���Y#o׼�l�m��Ʉw�B� �0��k����q�p����	�`���[���p~�����f��#��n!�Sf�=�_�R�(_OQ�;��� A�A�N�q4����{p��x!���M�̎5˟?۰��6���=�� �����[��Ӛc>�_����5�U�24ɾ���?�V����O�>Ӟ� ��/O��c�Z����#�$P��-'O<�}�H��/N��J��;������S����a/����������/,���r�ya" CT�;n�%s$��W۾�3}>�g�E��B�Ԯ�7	`�AV�n�	M�Q���q$�M�Om���Oڭz�ZOq��Y�7o�AOk��՛�y'Kx��ݍ'ϊ�w6L���_��ȁ�cA��2�S�	�$o�����D� !I����w�*�b����_,ݟ>w��
F���^0��@��8�d0�`���k�d>Z���˳�.��<�)bV��t�n(É�dvD�9�C�}��B~���d(U�8�0Iu�%�`�(6�%��W9��p���!�˃�it��f0�<�o�����E�X�CB�p5>&�v��c��x4	��d��-P�S	o��Ҡ�_ 8"~�����3��)'`�n���o&|>,�#n�ɷ�!�W-X�??����D���&�['�#A��l8 ʷ��LtK��M�E����J�l���SUsG��40��y
�}
����> ��蛋x�%o�n�pr4�;����\8�_���K�̿�#����^��S�)���$	�!;���_��$�%ȿh�'^O� U.�[��bD���� ^8��/��/���v]�<3.�9���Q:�A��s��f�"���y���Q@�ݧ��������A}�y�情Y�f���}�C�#��:�p�����1��d���|��:��^�d)Rp��t2z �R�U�5��87�J�"f�F
��4ǓDԤ=x
|G��
K6B5���h�`����������ϥ�q�>��_��w��Vk��4�BmR+d�Z�����+�*.�����=�[u�Ӟ���4�nN���j��3s>h��y[P�fe�u�k�0�|I��
zؗ,	���W�D��@D��[~�`���?�6��θ�dY���v<��v���p��X��L$ǂ�^,��h?5� Ƞ8��7���?.̣=̧�!����=���j�i2���vF�C��'��ـ�뮧+Gs
�}�������?�3���/�3�ڠ?�.(��cW�����)�4T�W��pj���%u�T|�-���->e\�Y�n�,l��"&��1Ԗ0�r�/�H����pfP�� �ʤߘ��0hO�VSuj�|3�I�� 4�m����$(���P�[M�(���?�1���_���H�mi?=�'��dik�g�H����-�F��/�#	��<J��t��/�P�47���P�Ռ�m�+�1��;�]$����JG��j��N�D�Drx.ep��5}���睅��{�O�I}�`���&���ǳ<}~f��p>��j�e6��4����i�+��Ƅ	wk�h#}��%|�������n��y�����Z�O��d��a��zBI+�R�/��mN��F��~���R[����~����mW�W3;
�ظ"��_�� �96�`�$�?��Lw���>�,��z�n%�u_��W,��F���j'Dt�f��ޮ�;" ��'Όw�������"U�ȜUF#A'`��ӈ2�f�pM���4��Ӧ��"-�S�chPꗷ��n�B�1��1%�op{г����PH��_��O��°��R�����a�P{}s��]L�6[�p��@����Z*����@�H�t�U�>
Z�9���K�SPH{�[j�4UKE��I(gp,���9n_�v(�)�0��F4�U$#|h�����3�\��m��A{��m���^K��������4/ГiK�ϫhdKzRq��
 	?O���T �/��͑���f_�%�[� zx\����A��/(_B(�@������@*M\�VR�fuJ5�E�m�f�]�5Z�j�6�Yk֭��ͼz�h:�r������-��瘌[F5��Ɨ�#�-�2��<���=�H��9(��[3��\3�Q�_끜��hH�Y^ ^(�}�w�X�w���W�C��'��|��ӵi����F \:وP����I�f��7;I��I[��8(/Ф����QC$�qDMh���%��4ۜ���g*��Ч6C\�u1o&�ji&�-�VjL4�e��N�]������B�Ԇ��J�A	�RG��S-�$thjBs�A�&H<��E<�A��\<�Ss'�K���Q^r�����[@p��@��Y�ߢ��)L�� �����!6S2|~�B���А��Q���%ech(�k�C@�����BI�\�F�k��ˍRǧ�V�z�/i�1��-�d�V��T��dа曜x"�=����=��B�5
�¢�Ý���i�F&թX��[f{#N��N��U��.���ѣ�
9pr�+��Dh���@ΛB����:Ŭ�.3y�>�āc���~��N��M�/�����& N�ڗ0˲�!X���^���$�D�F�Sp�5��� ��s4#�oL��{,�~��2n��"5F0j�F��4�4��qI�-A���ij����Iaq�Dr���m[]�O�9To� �6:ކ\\���	�|Fzl�+Xv}���D��^� ��Ծ��X:!^����d�p�p��xC��hɌ$��Ea ����ÿm���x�����{C=�C���I�7���'��8F�#96*.�v�h��)���oaY�~x����;S���-��1��-��&1g$Sȉd��E����l�Ơ9�_{��S��e��*�IzFT��e��j?�03#I����`h�����G�M��2'��Q&
!��Fh���AS��@5@�2�S뻼�5F���	*��ڱD^���o+���HOu�e�8��Χ�tV�5Y��u6x�� ��l�����^3��K%�p�Q��zaY�u�՚�n�41Ԟ�n��Z��"?���    M�����v�3h,�B���ԡb�puPjut��f������'��{��8��2A-/ �����x}\�gƃ�ʅ��~��i?��4eb������[zҋ���/<�;Q��ؔ�$�E��{'��;h�Ӿ����؜A�RSQo���G�C8�ҵ5Wգ�X������a�4�aJ#.�v��%�+tGS��+m\3�Bݘ�%���۷�lU�6��Nm�ޚ�&�mB�)��\�E�ߣZ��B�V�N��EO����j���c�}�x�-�q��'���X*�Q�$4��|jqaH�!9���}�+�(C� �����g���P�A(���[���*�07�	�j�����B�5HOAD��H��x���6xf�ڷ�F��@/�!H����L�Qy���}��B�����Ǘ�K�f��ᴴm��:�reB��|����=��k���?���5�kS�z�����@ �"��J~{	�Յ�Y:ڠ}h�#|�OU���lu�J�}\��>sh��H����Z*�H!�3�@G���N?Ӟq������AT��6-G�H�T"
�[��5�9���[D'��7繤�D�����/���!y���?���<�Oq��Pb�^���/�����f+�7o�"�3D�P�}K��\E '�m��{��Ph��U"��y�=�3ݲQ��RT�"޾�ٗYs�L�쀋q0�{�z&a{��� B��7�^�c����O_��,A��I�=t���mM?��9��=�19����AጣI�@t"dt�PKH;*	$+�TFԋC}i")�&�
u9{�Nb��h�V��y��z���G��K%���A�aY��}ZT0��M�+:q�+
��@hwD��\0یX���3���7]S��K�e��|m���ԛ�ÿ������S*�:l��3��[��=�7���ﰯ@dQ����F�� �����p�'"vY��ȱ-uY�8Sa�e؜�2��mt��1L�%:9���P����w}�o��
�dq�v75-���t�������iu�R!+�B�oa0 {�RU�&��B��ʠ�5�#��°/���B�k�d��nz��%��R�J�Y�4��m�>�-�S(G��v 8�B�ר��"���P�Ώ> ��S')�}�끫��e���1��T,	�O��W��zE��pI$��p?��e�ذ+2��j�xm�ۂ� ՊH�=~�3kf��VSR���jC��ͤm�����J��.Y�'6#�YI�ztx��P´����y��	���(�ч�*�Ņ��LP�8?*�{Ra�_$�R��%w]CqǮ[??V���GgnH">�1&������E���`���Y�Lw�[wY�"�Q�m<z��E����K�$Vh� �a�w�+m�k���%��0cط&�&�u�Ӊ)Wz+M�1p��Cc2�Z�V�W$�+I���E�6���9:�Cһ`~g��r��q�S�
�_�x��GN%	֟F؍-���E�VP��2Ad����3�36����?�t�q�j�6�����<oHƕX��e�Bӡ�hUUr�M�Bay���:w�?�����A�{	����2��s�؜��k��X���"�:��k�%�v���N���3zkդ�Y�ڥv��Ѥ����U�i)=����a� :��8���.B��l�o�����q������AC���R�[	
�����m��۔� ���r�+PpΝ�����eG��k�'p����7x"�0�W�8��B��
�B`�/��T���Yo�B��.�����ѽ�47�Px�T�bq��f��ѯ��T�&�K�\��yG�s��.��kyR�C��C������
��\3eB��O���s�?	�&�UE����1�����>9Z�R	ϧz��+V���z����.,@�C��1�?�ߵ�=W�8��BI���&�_ѳ=Yw�F]�
}�lV�]��$�76����з��`�E�&�J����g˜�Cs�9j�Xl��_ܹ'a7D�,d�s�{��0K�̀��۫͜���4�t��a�R�����-���9���r~
az(���O�%�\��C?�n'R�BF'��)���O�_fm5M��!�?���[R&�S��gi~3V.:�z��%���?��3)�o=A�RM%K�@���Iѝ�B�e�m��\���jլ4�n�/uuj%����VZX;��4�&y���f_�� a=I��(����4���Q>%H�B>(�RN�_FB�f0sa�����ǝ�,�jή�4���ȇ铇�e�r�p�%�Ɏ�0�T�\��,�B,�1�*�dذ�}��&�}�H�/�o����J`\������>�:��cD�	�Id�I@��1,��p�%x ��Tm�fY��i���}����},Ka��c��'�,��}4`ל�JBG��Wv �`3�z"���z�!��]�
䧹�s�$��x,��/G�sX/���Ӻ��9��i��H��L?݉D��?<��7�����S:�iU�k8���?�ЕKB��䪯����u��-��Z��lW�^[P��ѣ"���\���X$��~�y��(���%aLl�	'��g
��6�Q͒��1�uݘ/�����=Z�Є�m�J��)�ҲN���A�������f�Vn�f{����U89����ǯ����<7"Aߡ�w{�G>��$�V���Mg�.�y���Q�9�C*3�����oeO����m��D�(=�]#�^H���o��Ɣ��x�P4���4�>L5D�NѼ�Pb� �08�F2�&km�Ѝ�Z엽~O��V7G���;�'�0\j3ړ�e{ 0�~;߶�o���y�n�>\�������	r�s��ڟOF��������G�n���!e�0����އ1��U0���d�?�1��Y&�w"Pѕ ꅂ%�3��#����ѽhט� ~����<�L�5��!ѕ�S</!�T��[��%��W
��T�u�iq��{���+D�������N�׭n�/󩲡]a+��y]��
2�~}닍f���[vR��<��xv���_d�}8�����'�r4e���:ʵ}	�c2���g}������/���i<U��ߧ^��ٳ#�o�����aE�V� c�ˮn
��������)��J�H������{j�޶�ޞN��5���uQ,�.!4�oAH\���.Aw��R�Wj:�Z^�M��2�j��E��=���g�����YOc��`h������1��%�~��]�0Q����2^lo��R�+��fC0I��Y���ƌ!!a16ը&�(��yՔ�a͍��4��z���"��>�����#z	��zn�	Ԣ�p�#����@��-��5�9�1hvzc)�¤��3A���n.�=�;����x��
�`�����穏Zޝ��-�����0� j9W:�Qᬑ:.�~h�<�B�c�T�^��ۙ�Pv�i/�����ϟ�N��M�O�$PT��Ot\9��i>S.�5�а �0<�������w�l�1��J�ZX��HБU��v�{C�mKdZ��S�f�%�"!l$P'���b��Tb85�V��ק��b�_��9ޟG�Rui�7����˔Яǋ# �9z7�ɡ�]��8g�[��N:��)4�A�C���-q�ᝓ�t�qF(����'�lM��s���At֚0��^M%e�y�dEk���boqD��2��;���ǽ��x�`ŭ{7f�O�8�������k-OP:L8�PC�e((܍�1C�O`�X��p���F��D��Dt3\3��D��0��[@�!�e�[a����h��+�B{I2�=��d0��uy�U���,�V�@�G4KBOT7-�Z��Z[&<�[^o�Dkݰ�f�,���RS���tLu�f�w��t�u���`,��T����Ǉ~��#r��o@
N���L��c�·�^���Բ]W��!�/��6��a�;'��P�.Sx:�)m���Js� ]B�_@����1�;�&�I�A��7���aģ���ՃS/!�P��p臟wl��Tm
��Vi;    rqNt�v�W�X�r��j��9�Է��)�,Y�A�H�x%[m\+�Z���� �i;�0t�c�Q]i�'Ϋ����ˁ���::T�{^޸K�-tR���_X8�z�I����5s?=����:��P5_28:�j]��_����Y5"���LP��+�(�XIb����+���jx����^B(��!�;�H����J�#Xm�S)R�B-��Qi���n���5J�Y�M��5g����Z*�4�n����YK�U8�� �6�{��YcG/);m*����P��'$!�4��Us5�o@h���~δD�e�--�ǹt�	tt�KC��s����Q���嫈�A�����������DN���Ob�����~A��P�`b]���nW\�=�S&]m�DR�d�����W���H�6�j��~�5���V�is՛))$�����޿x��1��M��O�!�����y�v�ߙ�3�Q�/8�tb��?��B*����� �3<���0�5��b9�8��l��M�c;�:��H��[�I<�aU&�jp��%�+t�y�K�ER&s�D���f�uz�گ-[�E��>��R�Yn�MJ.�Tp[&��`F�1-n�>>��j)΋U�q�t8��,B`��ौ�#I��AfF<�q*,����������㶯K���Z0�������	���D��9<���L\���0�'OUF]Z�gTr����YB ���x��i���h{T���e^���PbՁn��_0C� �ɶ9ib����c�kJ�]iNխ��g2��D�[h��GR�Lu�%��޼�uh�]�JZ�N���	�����Q=�lc�YH��78���E�go#���Շ�0�%�N2п�Pt V�΀f��,���[ˎ��&sЬ�IU�x�M��'Rl�UG&2���|�ѻ��n�s�(�
yzW�B�F�L�8-8�,E �+�*�8Ob��Y�v���h,G����������L���yth����Т���ų���-F|}rrq�}����WO�[�^�e1*+����Dശ���,�O�9��5���}�Wr��M�VU7�ձ�ɫ+�4��qyTY;���b|��E�)�������^�ͤ��B��/x	BY���D���v�\�v�*�(u�2��r��[�T0�U�T�r�[�Ĥ+[�n������k�f�=��d�n��,E��N�nÙ"������������	�=Ļ<] �Q�PT���zh,��9}&.�Z;�R]7�����I�-��2�,x��ABL\f��K%VpC����϶j�T�Mc#Ul�����J%a�W�uS�v���T��L�u�"��[��l��?澬=Ue����"�g��nۀ�(FZ�f=D�ƾ��_��f_��.�>�I9��fٍͪqnH��!b�14Eu�a'R�!��-���_�bK��/�L7Ҳ�g��s�[��(����5���D$�a�Df�Q��|�0�����ǁ	�L���ϡz��X*�G���R�f`/d��N\���]��Mރ;�G#�0�負~r��M����"4��\����D�c�R �ga��Ψ/;܄c?�ȶ�#���g�6>�ޒ2��\u!�z{<�s�?!J�}E��Pi��t W�B�^z��R�$�_��o�D�΃�j�U�_<��s��J�A}�A�|P�+�O��Fq�xr)�����ܰ�#[
�2�Eg\ھ8ƾ��BC[����[��1�
��ř����PeCEh�y?H���|樺�q��M3�cLp-���ɉ�{�dw�:wѱ�4MYX3��G���{��>�}:{�'q��D?��h��e��Ȓ]��u�(�Ұ��݌AUr����AVY\c~���(a��<@��8��< ]��j��Q�w��~&2��vq���8��sQ	����Cq�?=��&T�> �gϿ��]����۶p+����u�:��_9F���U�P�������}\�pal��@���j<��>.X���pg[kX�w�.��,����}���߬��[G���B��k�bw���o�3�&�G9�ű���o���k�e��V��
|�λ���۞F�FK�s�nBUm>B>�ʀ#�����]}�q	�άQ���Ӄ�V����j�(?�Z��u�qt���#Ǌ����#�q�A�`D,����Q�.��]|�J��89|�8+WN��xA�����4Eqm�F=~͂ ���G�-��qT�F�fn�b1)��`8��,��<��^F>/*RDMO�	U6 8�"����q��t�N"g�%��O��8A��ŷ�&�)�����OEu0AS5��u�81UД�������Z�[�������\/6�B'?:��ҤT��q�28D|�q�fܤ�1'��F�q�@LI�V�셾HD���Ϊ�޹o��p4���9�I���@�+� ���>��]v����-b��+=�l-E�BL9ښؑ%rn�1i�����~�;�2tٓ8]��x ʦ< ���fVҬV0�	��/��[���^*��\���g��n�V��}Eq�3��3�(pe8�oW�$G�_0�?�P����g�A2�̦c��W+n��X΂a�r����g�1e.r��M��5ai�a�������k�k��ǗM�,�'�up�`�K^����n)��"��B`m%DE��Q��z�3��yl�uz�����1	����*:���9W��KL>}.>�N3o`b�<~I$��C��2���q�Ȍ��i��;C�ѵ��L�#�#�LY���Q#�&�X�����ݑ0��}T ���rLY� 9��&T��@����嶰9� �����c��'Ҙ���@ȡ�#���{I�<�k$���}~8�Ў�9�� ��ю
���1�ؗ�0�ZJq�D�݀gs�Gw��8F�ȅ�������vĦ��B������6����K?�[}d�#S�k��1����� ��1<���4�;B�
��I?+���R3�n>�MaX
y~ׁ*�
�7eg��=�w�C��W�ݹ���蓊�:���%UU����,z"v�LW��Xwݛ��{��hB����(��׏Ǭ�1��J1�>����ب%�X��%r3�+��ij�4�,�\x�@ڠd��S�B�Ɖ�����J1���������2��7v����;z���r^��ª�t��Pe�悠�>�`��ǚ���:���6����iꘊ��C
���n������;�T�7���Jl���S�IA��`�qI���QY�`*o#ٛ����ƨ�2���4<F�����.cX��G|��@�cR��oq�b%�ww���n��ap��(��p�160�@�yG�T�ʧA3��q��D��PecDp�����Ӡ%z��%�<�]��o����$=�N��:�p]����p�c��n��������k��@i�WGg/��,�ˍ:���"���␍b3Y:�k��+-�q�թ�A�����Q*�.�PsP4�kBPl��q�6��lkQlX
|c���rX��h���Bo`E0�[��=`�@��J�N+ }~׿��L�/J`g��?��_�N�Ɨ�$G*P�T�b�p�"��^�<:۽X0��^��z����`���6B�1�k��c�o5e��_ߔ�ʬ�҉Uy��P���MU�B��-n0׺�:�R����w1��w1Z�Y.4[�O��X��	�����A���]؞�Z�O��ް�fvK_K{0�cKB���zԤS�U<�p��zoF{������Q,�Fo������Fk�vx�������1��-���m�2_A_#�r�+&A�QI���XЬ3�����!w�Fb8�g���w��H%��JQ(�c�]�2|#�4_�8ޞ��w�j ��<M>����1�����A�>Td96T��x��+�j���k)�)�s4a��}�x�\���oh&n���%������;�ۓɱD8�E�8)g:��q$%RkI4�	6���\hn�!Z��FL���$��0�ԭ��V��l���R�/�.(�Ș[���6��'kl�-6A8E4ˠwy�    �̳ڦٲ0r��M��	"$A���=h0S8G�}v�);�]J}�!�&9�Z�+���9�	��te�%D�:�.w�![E׎&�����0���>q�c"=VPj����1�uƿR�"#�o�� 0�12C*���`Kwk&���ن&,��`��m�t̙���j(�B
�̖%h��s�K˚�#����=��y�5�/C�eMP�,����w3�lN�HHO�|�2���{Y�O������b�KR[��*TK���x<rq�?��&;2Fݣ�-{T�F���JP
̐�R�XRs�	�C�#�E�?��Va������ڔ�0,�p�}^An�%�}�Qv�fyh(E�B�C0T����Z��p���,�4��8��C���yV?�����nF��a��li�R��p��-����唹��H�V97���X���۬(������/�"�m�P���ȡ��؄_�L�6�+,1�4RB\5Pz�ƾN�� �H�\K��38��h�o�F�[@?�S������Z5J0&pR���m*�|L��e#��H:CRYt?{����悥Qp�'�aK�^G?��E�#��Y~7�������,S�ѐH|0rڒ�]M:*�qV�8��
r��L<��|=GB��Zh�~�̽���{��ϻt��B{��&�c��(�{n��)��$O6Q��dksr��>�$�sTJ �`��EIL�����y[��Vm���K�}@����Hq�����8�:%�v���8'Qf��{h����%��t��H��`�w��BQ���x��%��n�?��,���(�bS���T�-��f�n�'g�né��e� �vz��Vʼ��XW}�9Ļ�H~y���_y�!��f��u֝���qz	L�֜����x-��|���n�{2opEȒ���rWdT���=��@��W,:슣������z�A����gmb/��>97�v�0v���Ϡ"��5D!'�r#wBR��#�n�w�1���e�8�� ��:� �F�v��yͩ�V�J�}�����\T�����r`�Za��ܟ K]�3���K�����DY�D]] ��b�u��
���<�,�H�o)�3���3�<�lj��"p$N(����E�c���bA�u��ͨ�Y�"4�?����Z�(��gQS�e��JR=L�X������q�cQ:.���T~���{Q�����q_CT�=8fO,v��'t�S��_���{���v�H�Y��U�F~1���e�����@s�/ %�-C�,z��U��	��"eT�8��dmF�h�?)6$pP)X�v�р�{!������nF��	�r4�|���W��?w[C�sd��J���f�&"�!���#�"�FK�lEX:�yG]v<q�ǁ��n��k#*ֹr��t�\a�ã���q�Z��'��ޝ�Z!��^ɘ���Վ!���#�J����P����	�8���H��i����٦���i��H���}��.hq8?=��fT�N��@%�Oc|��:/�/t���4��PsuD�ՙ�Q{��=Q�[C�@վ<Z��)��ᤳ>PQ��`��XTq���_��T��_�q)�v]�]/��ˇ�,���i������.��w�C]e������<�P1]0��4�p�4��7�uI��c��k��e���,��P����Ez���(���IBX~���+��@lM݀��V�Cd������YYM�mKij�S��Ԟ�fN���B���[;��"8���|$��sB�V���ä}i�
-p�^��������"�C��hYt�ư,���5n�b�@
�Ye�{�Ƣבϳe���,��PU��0`���䄵�F�v[���*n��ޤc5��B��z�wymd��̀�[a�{�x����&-�SB�ǵ�^rp<"h"0�,,ǅ�3���@�g2,O�m�KQ�F>J�s�_j�.l�a�$&��Z/�mrV@�����,��*d-�XBҗl�f�sv�b���	���!|�<ϫ(Y&��݌*� � '濠@ �
y��������3����g�)�Yk��ʡMA;�S��Ie�pKQ5� ��~�y��,�u��L����i�\b�ْ��i�;�QG卂=�%J�$'�%5��_'��dc��*p�=�T�`�ae�?�������a��O�n ¢$����W�2n��l�pϙ`��I,.b�,����i���6�����@Ƙ���u�:VK$M���������� �.٨b�ЏD���a��bП�ߏ
��]MԲ���`ec�+����a_�Hn?D��"l��*y�w���Z͒��#E���	O���6O�y�tfK�3��%z� (M���ћ�g�,�Xq0=��fT�b 6.>�gQ����y+��&�;w;��.�$�%��(:�o���yw�����(3�ԗ�G�{�a"�_XN�v����n��e��|#���$���n��׹��('�@�����^�d��+������]����%S����;��m��c�lCȬ=���;|A�e#�{��7�Ok��É��~7��v��(�Px{�������C(��ZhoGz��0F�j!�3��ďwdx�Z�b�Z����ꨡ���
�L���.�7�(��lU�q`��A.z�#����?�,������I*Ğƥ�7��'�v�R��R���+�=	�7mRԂ�/dQ	���e�k0�W���%[�1��Ӧ�,�g���"e(��;�����<�G/���nFU-A!���×�k�Qe�ꞎ:��.p���}|H�;T;�N]IY�F�4�|CP�nKU�;Y9���z`!fXA�D>	��h�Ʀ�����LypO������$�5a23��RD��=
��0K�{I���D��~h3V�dkA�x_PF���(gh�f(�._��i�,(V�L��U�@� {�����D��~�9ug!z{����q�~���X��it��#5�%�@@���%v-��B���u3�����ip��)}�3��UF��A�ـ�%����v��6�{�J�"B3��X�]���q��s��Cͥ��6a�%�l������dV��$���\���%z%�>������L��Qes Eh�y>/�|��mk�n)S;w܁�$ .tDU��������y0zߍ�ݾ��#�Wz{s�w�Σ+ b�8L���5l�Q����}�u}x��qr�j���t,���ŉ(%m�}��ƿF\� |�~"y��� ����C�e�Q�f���O���(�f�P�֔�ml	����.��X�b������_��~M "��"�Mh��p$&�����)mg=�Ƹ�;R�W�+n�x��}��y;�T��nO�8�0��>/�vM��� <4/��m�!�u�I,�L���ׂ�e�z��wذa�q>[��ĭ#�jL�pC-H�+?6�� ����c(ۋӲ<B�2|g*�P����s�<:�<W�w'l��(*QΪ�o+�(7P�x��a}��z�I�s�6o`��|؞�i�,%��'F�,��O�����c0��Y���V�Z?���y�yz�f�ї�60朂p��2���sH�C�T�CO��uG�V#�eX�Le���b���B�Q���"��qCQ�F�Yl�(^�AHN��U6!@��1�磅,ec^'e�l���5��3����=��`:"�>�1~���࢝I0%pFm|~'���+'뉋�?����6(|�$$���hNd��c7�A6R�8>�f�bf.mq6!�:L`�����߲!���|�)���8�dڙn����̌b3�]�`KPv����iLg(^� HL��	U5#P��S|�Md)*�~��⠯����~�Ȳm �0��A��-|!VKo-k6����.�6q�v�;�h~LG�S Q�m?���[�@Z����ƣ�0�:Yȗۜ�y� �ŧ���¦����1	�הf��*�H�_�];�}(+�����(If
>[c��88��\�i�k���� ���!��9��<��Qe�D� �"E[�    �Ĺ�,%�W�������y����1��u7���y�l����	͉�H"��}��c�fS��<X
1���ܛ�)�}B7�IO���R����K�5|�<Z��5,]�]L��-EH9��7���H�I��9	�� 	a-�`���+���$�s�E854>˶�	��4��Qe�E�}>�b��-�ۛ�|��-\��ڼ{���\8�gap-p�I����^ÕڇS�&�D^o(������2]��<y���_)���Э[�ü�gF��_-��Y�CX�0�_&�WT�y)F�L�%���W���m�"�� Da�l-�,2ӹ�Y��`k���Aq�����'��Q�3 ř��,��QeDH�&�ϟ��3Y����3V��~�(�BF!hG�kCۃ��I��;�+zp�<�B���{��G�>.	��{��̄"�����@�w�@��1�����"�ϒ�N���k�v\�GWoT1�$�c�\��AE�#
��`K(Fg�S?��q24���}ȭShX%h���5�9�?�������k���P��$0_���A��������p�+����do6Q_W��x���eː�'�;��c*�<k�ޝ��`,���9kEv�c�Տ��-�����d&�y)~zV�2��U:_p�#*Q����\�)�����p�?��kۋS`��E�)��O:!ss�݆�zBB���O?!��X"Ζ+���j����B綈:R��&�3w�Hq�9˾b4���m�������D�Tl�*�x)�D�<�3�Ʊ�k�x	l��R��m
)��<�W�k�@!ff��}��������ox�p3<��(L@�}G�୙�B�[�u��vp	!?*���?�@������*��C8=��fT��  D�ϧIVB{9V4��͹C��.T�LEĆ.�M��^S��銔��w"jq�≂�4T�9�>09��<�n�����d�M�f�Zq	�Aᴉ��2'X$#_�I�u���"���0[�P��7ZȸF��,�_�#���\��(p4#���f���8��h�PA���N�{��(�/$��݌*� B����|~��->��f)�{�g=�{"&~Ț��;��X�vbGU�69�9�8DJG��xTG����~�,ʕ��������^�]�����Ļ��+W�q�F|Z5r��H6q�:�Jh_"+q�r�75�ʷ�AA����2��4�#Y6��m�Kb|,��,�b?�d��/{Y�$H��U6�!8E?����tL��o��
ېPqc���$h�E�����sO��19��������0� aGc�/ݱ�}$%ct=H�'C/fc�듯%Q@��k/u�� ���7�Z���V^��b����5�ׯW�<�e�e����A���cQ�ɲ�?�`,��2�l{)�'H�XJ��2��4�sjF8A���&�e���d��Qe� Dp
ǟO��&%��'f����o����R���Ewٓp�<i3��u}�����>�}�H��>����]{=ᰃ���WxFK�I�������$�>���pF�ؘ���_�N~�Ҫٿ[�W�lb�������XR�?@k����g������W.Ȏ@8Zf�n=��O��&���i~7��i�P�a��35r˓����[��O���ADM\�M���������.k(s��×��m�q �XIm	���$A^��K�=�,�n))a��:E�G�w=�����*�^�Ҩ�y����s��&�(||���S&%�N��QB�����P�őP��b(�d|�>��w~x'�؝�fCH�D؟�4�	��!�
M#��������)oR��}�}�4M�t���	
�I��T��P����[F�o���7*�M����oh$#Q��$�d�p(I!�J�G±о��#�_n"�h#ܕ;,E-;����;����L_[�U�Qnx���l��Y��Ծ�:�}�_�F���CC"����qm$���$�
K[�6����Fi{L����-����w���ɋ!`S��y#[&�([��ޙ7D�������>)��h6Iʔ��,�2����utԑ>�$���r�����(W��?���뙒(�Kz�Ņ<Qu_��|�����[+���wn�W7����~��a����`�j�!� s��g��/�Cdq���:}>�=��FY��@X��9�$�|!�4�v�8ѐ��w3�lw�N���%�C���ķ>T��1p7Z��!��_�%��mo�V�!�?+����i��rW#��PĽ����mFT}&�м�3������`\��bW:y���ѣ��,��n]�Ʌ��A4�[�c�M�Ӌ�Bn��Y���b��4��.'�8���p
C�L��6���Z؅(`��[	�Rw$��O&R�I��<��Qe� E(�b��d�b6��-)ϻ�1��4�����l̈�1��UwcD�K��N-�}D�ώd��l����r��d���I���ѳ\#S񭤠�/�x�\��h@�o.l�����lԣH���y���*�>�ـ*�;���c�"_����`!�Y!����xAwd�w��3�ه����Qe�EX
{>�$�QcE�����B��:R�u՚�g^�$�!!�dw��;��`J{zP��^�x��Da|����ƈ�
�L�%���~4U���C�L�V�A��!�˥�3�2w��Jq�DppQ�r>$����?� ��3r���E|��r$Kc����"��V�|y�e	�5� ���oŞ��@�e��nB�!῟�=݃=��;༕pgC۾��w�����f���$2��������5Ѝ޹ѷ������86�E���s�20֧�
�K-S.���C�2͗�j�\Bj���k�3�;�T�i3�ЂH�,�@�v�Lf�i��m�q@Q|C
��{�|���F�,8���w3�jB @>�i���G!��&�� zٱP�UpaTbx~G���*�FSj[���}�y�g�̩��^�?��6�.�!%�oC�(__\�tCu�n��d�d^���D��Hs���i���ǸؽD�xx�H�F���M��S�PCP�d����X6�������ѝ�@qE����ϋ[Req��l��Qe� Eh
y�����m��郞9�I��4���)B������{ĕ��Y��*�Փ�R�����ď��= 4�:[/���tX:����,�º ā��|K�km�?ۙ��f�ȿ�î�V�+�\����Q�M%#���)k{�[�/�o��tzP�S�֣ˢ�`��DI�!��,C�,[��)!�w�8�������|z�x]����	n�L��&��\��%+^_V�'S��R (���T�#p؎��IR�W� 0*�vU��c��DuQt��u��R>����}��s��Qy�&���c������?nؤ|Iܖuu]Y뢟 H�����M�;�&�>���@0_�dq��!�d+�CŎE]�[�^�������P��2T��L��Qe�D(8���:v]��1#��Ʈ���rlq"!̅�*���O�\B�颲���%��Ç;;�u١��� ��Ё�|�p�hfJ�sՈɶ�_Gm�37lɨm�Dl\���@�t�W��L��1��	��S0}h��.�Tb5\C�L�C^��*M���F3,����N��yZv�.�Q���݌��($���O�$�.��F]r�9�G�&�`c���9���������9�5��L4�$����rD��w���Fl|�KI��t��:���y�-4J)G�zs2߮��_���^U�Da�˅�&Q=�-�/PN�~��w�~�nn�zh%]�� ��k���pJb��B���|�pj�}��:���gz��ͨ�q�"F<���#�LM����º��/yAQs����))�H�7���j)d|�y�OY�=��ù�J#��%�U��:�|%{-J1�0��I�y���e&����%cRȢ��F���'JaT��{]��㏽�GJ����T���<�{v�}%"&���s�K87�B�i ptq�4=��fT٤���E��`�f�C9i    s;��A��~���d�I8�k�,�MU<�xW�|kc�SLt���V�2n�Y}@R5]S���4��g�u�+n�L�2�N��2��ϵ�,�W"'D��5ä��E)��.�C��ń��q�h������� ��CmKqi(Y���m�����mJ�!
C0���f���72Oke����~7�����8I=�6���_ɨ���"ߗ�r�s��~�%�q�=��Մ�	������xcor>��Y֛��|@N6PsC��a�#��d�!�uI��sy� �6�3�'`�$���Q�0O��r�����F�bcp�����`�yhn�)��&�$�EN1qW�^�>�?�z�s�XY�AH����fgcmm�V���/�����^Ȗ\��-�4�(kU+w��s���6����6�?��/u�0j:[��B����BC�lOh�a٦��X�+4,��^�R�C�w��(d�������G�*�_%����&���>l��:��3�K�(���`h����I�R�����
~xp�|�V�Kj�wzZ�E��������d;P;˕�-Kv��2,[.{�t�C���+6A��z�I��r��	���|J��������cEQ�[�/�(�@W
S�WҖ$��8��_*�c;.�~[z�iX�|!:ʻ1$T���Z����_�M?��̔E�X�B��a"\�K�X�G��=�.������@_r��ͨ��",J�ϧwi������^"}Y��x��ޮ�V�_%���\�9��rO�mm����@M�3F�V�h)�b��F��1�2ߜ�����̜\����.0��i�L��%f�Z�s��Fξ�0,֦cG�o>P��)��^��їN<'����;�X�9�8����q2U�nb��(n��	�Fi����%z#�<j���^z��ͨ�	"���/އ���'TL0ї��G_s4W�R��K-u(h(2Q�Ka�2w$UL�i�50�Ĺ�x �"�&{r�ԙ�s5�$��m��j��
"kr)K��\D�r{1�Q(L=&�h2x�\�R�1��cIs��^Ca,+�`!m�M�1��y8�1$�#��D�c��c��y�Y~7��&�P�|F�6�N�PQ�9F���
bKܨ^ד۪kyˎ5�';}D5D�t���=kh�J�Hn�
���3<�b�!�B�%&<���aͦ���2�;��m� Q�\xo`�N�!��R#mwW�..W��l���/#��c�CK2��^�p�ɐm�У�k�]��X�{�E�B�i�lqAfz��ͨ��",�>����znw)��;p��ȶ'k�&��h2Rq�U'z>9�U� uă��3E�
>=���Ĭ�6R���izNl�8 ����-�a�^�!�ꭞ��v�K��ќbAKGq�+�n:D2�Ô�=���]T@}i��8V��ð�Eh�� ��Cq�@p%�Ѻ#V��y%�lqT5=��fT�"@.���Cx��n%��~X.+j��?�����Pa�6��dlJX����#?qѱ�u.�uO�jC�5�eQM�&!.�V��cR�d5e�}C����B��:������p�������E\iB�d5w�G͎]��$N���/.����@�����p��C	3���k�-�b��k�ƶ火��xb���QI���f��d�bC���{���m���Y�@���� ,qwP�N��[>��K04�N���J�F�ȵ暬l-v�?��vL���\T���T�2�f{��.S��&/s���%-�]�?�$�*%/����7x
��>��֝f��j����n�Ÿ�.�]�\|��[�����au\���ϴ�&"?(L^�����e���<�� `R��S���,�	��Q-�8Q�ZF�'~w$�T_E��X��M\��ؐ������R�@�e���Q�5IY
;��r�K�Z�ã���;�/NdB�w����O"�khL���fQ�� :��soq04�]󿢊��B�����B"�K��։}�b�ό�����e�>��"K0�X��I��{��wR�2R�KN��U6@CP��Rm�}|��2���!�L�ž����zS�C�9��z�[�F8UN:���/�\W���D����L�]1�"|��������f��e^R	ao�u�$;����CS�������[�c.e���
q�u���E�z�!�#�R�l!�ɘ���t�ٴ�H0����
�W!�P����6��S�B �
ϧ��c_a��8�&f�"��w
�a�D���R�x^WQ#�##���&I�bּ+K�04:�Sa�B&#]/��p{9lf󦻕R�D��Y�8�I���Կ�,RC��E�O*2?�]7�;��gS�I���F�:Z[#�a2~և�_>�o	.5?+w{L�Yh�͊��^V��Y/+7����7+��KB����iL��b�v�{m4�Ƣ�6��D�&#����������A�\m���:[4���[�f�^#�E����kUX�*�!���1wH��Җ��W��1v*�!��d�:�w[�Os���(�j�V�dVo���_z$�|�P����TҼUG@W���9�>6�O��vf�WX��,9��mZ�u�A��8)�c��K�k<�%ɩ��R��v�h��J�I��ZQ�n�{��i!+�l�A)�@�z��Q���^��H�/ZG���@�+���Jfu/�Ь�e�R��h_����L5֤�R߭-�)�^��:.��z��.����yzV�׫���&�d�.1�TF�35Sf�|HJyq<�E�P?��Wjy(^ڊ�w[�{�H�l%�Od��KVU?�!8M^h��'��>c����߸�:��+aW,�U��#���M�`4\����KB�����D���r�i����{{�JH��=��Zc4}?��=�F)�1�%8��n�|��5W����0'\�2�
K\�;���p�i��UQC�!`Ku5DYg�waf�{�������h��ƍw�-�V#��*f�UƢ�:^?P��ױ��p%��jSLT���ΰ��~|4��k[�t������Eg>Y�gf�=�g\�|n�ڢ{�+o�R����$\�$�]a�+��m���I M"%��wdW���	�j88�����m���ٳ�&0����V"w*g��"�U��3��M)c8\����_�b��p������W�QS[���য�����$�h6���ݟ��Ǐn��E�9)�s�k����Eh
�poߣ�p�J't�WT��Zߣ�@��J�]+P~��7�Ϥ���m�|,�"_�i���z���
�\��ssrz(�ØF�w��r�����)��a}��Nw���:L_�g��4���/J�7ӱ��,�m�Smq�N�&���:�,�������?U�Ca1,0C?芅��4��4�{;�Ӳ{3s����V6kfb�\�9��\�9;��1�Ѣ$3��KB�����am�����s���|�*�#��5gd�~
j�/s�*�v�%�vCe�{�=��]KF�/߹�C.S�+^�ԩ����:H�e���w^2��EU�B�$<����s#�ֳ�ϧa.L���Zo��.������z�nV�?�f�~�@-o�/	�J��b�>>��Q��.7��a�;��_����@lB^��/���Z272?�>��i���M1t�����w�&\�o�ºW�͛ܣ�@�!J�����`��t�%a{�A��]:�	���9�t����
����r�iz(�±"����*SI�d{���=�C�
}Ԙ��Wq�u�@p�]n9>�v^����� ��3�u������͸\���I���t��jEͻ-�=��)��Oʲ��B�ʚ��PEr>i��,�?���y�^�-c{d9�RY�K=2�~���ƣ*��\�*)a�M�H�$���(�<�36�}�U�v�֗�x���'z�`��[o��J���n��B�;�^���;�+�5(�ت����0��?W�P-#$J~G
R���Ia~����l���:�u�VH���}ۻ���Q�X:����g���)ż|�@3/C/I�ja��t�Ƭ�OT�)m��G4�6|=︅?�    )��m��k��8�z��t{�I��(���Z)����s�8`����%+_Q;o*p�vih�+h'�*�ډ�4�dC$M�k���w6�K��Rh~��˧β.L,�U�̓�jY0�R�x�@'㑗�d%��[���G�׮�~�M�������N��&�a�y�1�;v�g�\�M��������q���rs�G#Ⴀ�%%�]Q#o�~�F�\@%���H#@w!�qu�/��j�����?�a����a1��3iP&�����03���p�HÁ��T%�k7�C���ޙƨ��	QA����=� _+��O�Fc��ڂ���Kg5Cz\��z�+O�N��D?>^�(�de+j�m���>�7�pe��0�,Z�Y�j�5H����[p��k82�TȦ�BY�K=1�����F����*�`k�j���ԜV�Hm��ugW������vv�e���1�p#eδ�8]|���"�q��G��SA�/��)Yފ*x[�{T�Kh�bas���!hɫ�ex'p_3v�@��6"���a�A��&��W��`F��BG^�r�4�2�[�e�j~$����Gk�9�
��F5P�¡�x�s�C�^��d�n���~��e�<ovO41Z ��,^݊x[�{4HU���?E�������WcYp��Y�yS����^o7�uX�R��s8��Ω����h�{����p�%!W����F�>(�:�������:��Ԡ��-�v��ck�ZO�p��_�r6r��tX�;�ȝE+�T�,sEU���=�Ȳ�T�n�`ڌ�q����PpU���-]�<[��#�e��7j0�&�҉`��ZZ��\�̳s�s�x�q�?P�8�C/	�Jz�<[}�5u��m�λ��g����9[mJ�zϴ��=ؿl�IYCtp�h����ݸ�o��������d"׼�^&��zJ3e����R4�bHu/�a,�0Y���6�ri��=��))2�oU�e�1�̬2�S�x-�����E���Ysz����`�����Am�:�u�P���l��ԓ��������u��:s����R5��Q��[�<.qE5���=j�1�Jp^)C ��!,�e��Q������X�<����[��U��:�|`V�c)��/x�JUR��{���'��ٚ����7��4Ts�v�E�Lb#z�?�L�����݃�;���Ub�%K[Q�nk|��i�J�)��	��
^#a (�~m{m$�u��~��������Ü�%sf��МL�M +���/W�j��IS����8p�h��@Y_��xg/�=�ojۣǌ:c��O�!��VBl}0f�noR^�<�ޣ~�ׯ�/mE����=���2���w��&���Z�k4��=�������ޅ�s1�{ĺ0��xX>���$O�Xa����=O���J�����~h��8}����є|޵�&�|Q^SF���c���Y����Dy�ھ��u��v�KZQ�nk{���	���I`$�������L=��ӳ'�t���&D�����b�Y�K��m��Ε�d�U6p�����%!U��q܍i�sc2���q�o�WfK��F����(�F�YͷU]�Q�>�ʄ���4-����+�V�d���*���U�4V� �1p�D(�z�QC�ȶ_�@u�ӟ���:�z{�X�+��ߪ���YE�>9��E�i������$+���;,�`�ůz�L�ל����x���������Ʊ��N�A�������tG,JUҼ��&\�����]I%��s��)�JB'(��zQCY�&�grn��?����c��|��NF��(v�(vv0�G������M��
5q���խ��������:�յ�A�a���i�p���F��K;[�	�����{yecܣ�pʈZ+,rE=���=���J6.�$�++"N�4�U���1�=�����Yo���hF$o �Ĳz�}lV��S�x�@�>^�^��Tr���AV��x���ux=�5���a<�����l`NZ�����#ۭ%~�����?�/���u�"D��c�rWT�ۺߣ�8lB���,x���+@�H�$�\���=�z�Z�t'��R+�h�"6��\Mlv0]���F#/W�J�(ٳ����%�5~��GR���s��ԽL�{��^ӈ0��}�����:��'D�q\���DAU��,Y劚x[�{4H�{kM$`��޵B�`A��8�M�8#%���۞�e_ye=��替6%Ų��:���Q�N��x�i��$$�5)5G]��-����p�k�;���g�w8�u�F�hˉ"�7(/�繖N�逜�>�����8�ъ�U�c�rWT�ۺߣ�@�pVPIAHO����Qx�X[�Y�?�u���b}0�օ	���`���]���ZO{+`��W~�?_I���;;��`�ɦ�`
a���ݗ׶�C�<���r��\�y�H�֡q��+��ʬ��s�Aj���:VԵۂޣk@�,����,�]cI����*[Ɵ���ᛘ�."����������)��H&y\��~�JT�������7;)Uv�t����:�a�u
�m��Z���,[{���j���4>����)eXܣt�7'��u/hE����=J��*����Gp�b~��J�P��S�����v33���])���GK�B����B���Lc-
¿�$�*�!�\�8.M��`�V���q����y��5mU�xD�������z��{�@�$�H|Y�w�+O��?ǋ��U��ؾ�%���ɵ����S������"�;!d��xF>pv���CAV�l#^.c���n��QY�K�4�������ՠ���g}��b�h��ȓ����������J��*���."g�}g��6��m$�ʢ��5��.	j�����:VԵ�ޣj@�D�S�$B�&��^Y#�$[w��z�ٮ~L�Dt�k9�U8��K>:��ˎf2vNq�����*i�B��}��ѧ��ڥ�cm��5����bFY�7�	�!�'��S0�4��p$m?�fy]����7Z	��&.sEM���=�H ,�p���4�0�T�-���I"x��m��?3'�D]nŬ-�bY�=0�|�4�*м��/�JZW�Qw�3�]�Jo=:�"�eC֬wi��sca���S�t�JGu�|�o�!�)+o}������d�\H�VԺ��ޣw@��*���4������}x�J3��o�ήA�	f��|Y�w��h%����fJ����,�%%S��y���痺�5�d{�5��~6�z���.��lz�?ѽ�^5����,s�=�3+/S��Q!��Dlʒŭ���U�G���J���h�5�`s.���ӟO�/�3�q��/k�.⹨s�Ṱsn4����1���$�*��.�4Zg�޵���w��'4�?�[���{���Oݩ��պ�9^���/o��u�r��.u��QƩ^a�+��u���F L�q@��"|"������,˰�b�������mm{�UЙ-z�F1�͇_����_RC� L�5�^��o�"�w��#)����¯>�����e�_�������s�gg��ݶv���N�9MD�ʓ����>[�׽xi+j�m��~T�rh%��q��~ �KR5� 1&[��al��)��[�.l%�T���l?�]�O��	����p��j��$$�u7��;��18=z������Y���CCy���m]�Z̤#��F�;M��>z"K���km�Qy��wG,&Z�J��ū]I#��~�Fi����X'�`�R5�E����YƟ�����)2�
��t�N!��\�Bv0]���'�/7�J��+�����
?-�ƻ���u�L~v�Γ���X{!��n���I��64r|
4�)�A9O�ƼG�R�сVX犺x[�{tH3D��`����K��ŗEэ����;��0N�d�/��e�R��
4���&RI�j�"��MIf��[�G�la_]�M�}Wn7Ǌ������m-���qt-1蛀5|�)׻�����^��xM    +��mq��; �V*E�	�bX
��w$����v��������s��N���"����2�_����Od�5Ïhg<��vu$Ok�ծ}��>�\/�~0}��_��?j�Y[�NK�8���_n��>ï֗P�Z��,O��(&�ֈ����
PQI��p�����U��4�3$I��!�
�#r�q&�c�,2���n�+'�_3(7�v枞U���t3�D�f��HV��:���zMd�r�Ϗ�~0m_��׾���h�wKk��j�-����?�������cy����G1��Ta(Y���y[�{4����U ����薪1�� �%{��i��Ⰹ{�cο ��2��b�y��bf,\����lt��%!S��D��JW��߯�$�n����Э2'���:�3�̺����lD��_5��}԰ʣ9��=�z��Q,\׊�w[�{tH��O#!Q/^Y��x��	�Q)_�K�;#d]s�����P"�I<.��fB9eE����U������s?D�)sXz��a������k�s~�͙`$�wde9��{]�=.��iŷ���+�=����_	�xq+)`r����4QߕbH�2��Y �o�:��t���{�/�/�ǳ��Cى�L�/�a�/��W�7��qB�f���o���8l������k<sp��^lF���������t����M�-��F?7U�t�x-+��mQ��7 MU�c��}Ϻ�_�M�&�	l#�:����gΖ-3��[����f���Â�6�%a���/)�j����/O��"�w�_9r�;w�s��-O�m��jLݥӬ}�-�۫i�v�=�rC�(T��M�W����ߣ�8��������$�;'t�\,�=�%�fƟ�ư��q���b���a|��3����w��E��p�%%Y-Ϸ�O�q�n�ʜhU���u����-��k}w��ꍙ�0���P�GU'k��$#��l���V�t0.wE����=*I0��U��,��4�	��$���Jփ���|,���k���K������܄s�٧�^�>��|?QT���E+��3`�����(%nO�ؚ����%��`��&�7Nk\m{4���������N�KUsy�W������^Q5o��ji��r������T��f\�������ӹ�C�����8�i��i9Le����)���U�Z7���Ƹ>F)qE��;���SG�36�G��P�`A�6[�I[���[]���I��Ѿ��)�թ*q��%��v׵�G����*(!G~⩰��jZ��p�a����S�<�msl��6���[5l,��m'�kg3m0Z�IHU��C�6�����G9^q���_���H�/׸:y��:��:q����ΘA�N�ov�W^�u��W��d ���&���U�S�&�e�FP�����w]��\��^,�C�w��������b��枛���dR�O��u�%!]�B{�w��[Kk�8�:7Z�&�_?'��9wv�16��7����'��R���g�1`7_kr���s\��z-Q�T�x�+�er����4JT���8	��%��'�������#/�K�[_����d�)pcr ��\V+�Oͪd~4���p�6�#/7�j&���M�.�b����F}y2|��S�Yrv��������$c�77�p���Rl��[��-?��;R��J�rJ���*���U�^I	�+�4]�}aj�� s윷8����nk{�v�X��1_�Je�0�Ĭf�Ҍ�`�@���_2��o�Yq�{���Qkv��u�����M�>��;r�u�n�0|i%�(�ڍ�55�i�mks��ʝ�{��я�V�甬lE��-�=����U�>��0Z�����e3z�����{�=�'\��aXX��.Q���U<����g��h<���
t2xIIV������-���jJ�uU[y��d��`���>������/~z���f���c�=���w\�e�*o��yE��.�=j	��*aFai
F���%Ed�K�A�a�=�Ծ�/O�����k��E4���g�1?���+fH	����V3ƴ���V��5Fۣ�|_[n�������nh�l��!�&~���֥j�X�5;_�U����RP�BJֹ�*��]�Y!�C��I���.2`'�2ϝ�g����5]���W��ng������"�3���,d~8m ��"�$���J��B�w���f_��y�_9�5=k���i��Z$�ݺzlۜ���׈�ĉ �;��,�w�ܥ�pM�
���������G)�4^���F	��LX����16W��7,ۃބf؞��n.���;�
IG� �lV%����d�x��'�@�Z^�^����{�n������d����+3��Զcd`n˰{\_�Oh�ƻ���q�ʛ�'w9�`����,^�zy[�{�|)�
��Bf"p�WBdk(��x��^l��֟�/���q��ĥ큁�_�pc����yp��.O�����x�%![I)O��}A��ޮ�9|h�v��+���n&��;��?����h�%E�O2�������N]����0�њT!/Y�JJ�\��+e(Mz�h�ep�b?P�0
�-ݑ��^���������o���sՉ��ՙ�L�:-LS�#/W�j88ԉ����K-�u\nlm���_�d�������}ז�L����B�s5��{���	�0Fz������b��fM��,��;Ɉ���j�їѳyq��Ax��#���r9�X�f�%6CXJ���B*0�����!��Y'Y0 �?�!$�ST�"����ٵy�7^G^�;2��qF���}��:mM}�Cs�g:�Tb \�QPfr�v�kM6�)y�.�y�8+w������l��q�`H|�Y��b1�+���y�;WͶKT��Ȁ9]�4�c�˨���5�,M�4	��p���l�Q�4?ۺ�|<h�Q?W�	@��e�4%����\��a���6�v�E����|��������'ڲ�t�=�\gй�Ԏ#5�t���bq�`W?m��e:��/��i7Z�*��bz�(/h��<���H���w�6�S��X��:�O��]������ߧL� �_bȴ�2Ƅ _�	�,�?����j�^ϋ%��fLMU��p����:��ueO�~���^�c�]���s��űE��A��ڈC�0f���ɏ �J�`� ���!,�d��A�F�Y����*��]������rf��x9�ߛ%=���F#C允��`Lv�~�n������֊���~�*l��6��3����Vw5�Ѣi\��t).N�颸*ة�0x��W7�RH��q[Fu �@�	�$ �%!s�����
��De]6���e����A�Y�S�����7`ξJ�S�s��G��
J|�e�]5G}�	����s�0�ܓ�#M���ۭ��e�A��F�����k_8���M-�Dt������P��e����-��	�<� S��VW_�cX4��v���e�tu�f��������`*��Đif��> �5G������`�B����1������{u��W�q�,���^�F��>�3���Į6q�:gNz��?j>��2(��b[�/�c��h�18� ���� �3���A �g詚�{j��������$h���FL0eJV�	l9��W�0P�;R��.W7��..5hOY�Jc�<7�*+�6��:���a{�_3�6R�����.�ai���4�z�<�^!�\F{ 7��(F���w��F�{����	Vb��C�6��"�Z����#�E�1&{�F�!�,_������ ��nߤ��0|2���α操���}�8O���#�W�Dp����b���{q�����d���]@3���.�D �)�Xt�à;E�OF��Ͳ�@�7��,q, �	晚d�|\�H��LYӁ�М	M_���Y3j�l�x�T�e֫���7�Ƃۉ�Z���Zt_���q=ǭ��    7��>�Uj^�� N�0)Ƙ�2jh
�I>$I.��HB���G���u����5�m�;˱C�����W9�eB2�Q3A��9���ya��RyC�u���Uq�t����ٛ/j�LT�����.]�YYK���>گ�wC�O;�7��������n�TF�0���TcLy52�6��7�PI�4�.I�hơ��L��ݟ�=8�y�����J\ Ƹ�Sæ՘cN�1��H1�\I �(�ܛ�Ν��=����3�n^���N��Y�2��f[?/���3o"�zw\��پM�4t�>PMFLp
h����e����'���A���d�eq��b�q��P
�I.ߔ�����/x&A;9z&G;kN�iG��L��RyC�UMl��k�f��t��4�o�g�*8�C֜c��pyW_�@o��9����]_�$'6n�Ã��� �B�̏��C����U��S+�`N�^V�,�͊壺q=^���=׳�E�C�A����3)5ic2��/�P��T�pp��v��r�~�7��n;�O�y��<�b�?3=r�����[,�,۹��[��7�m6�'FI.����N��Bj0&�����fF
'0�=m>��g����,��z��D;[:�9�}�N�_*���a���bf�soH�u~ݑ#�_S�%�{�ь�ޯM\
hѸ�ȭ�TWOd������Kf����l5^���ڼ��'5�m���ŕI��jr�%R�1�e�	��a2�L���PK���Mx.��Ӵ�7:�au /�?ޔ�3,��폡��Y@���Y>����cd�[?F��N��n���AN��=�|�zu�|L;��e�٬��#�בL�������gc`��b�Z���-QA�����Ř�2Zh
��ΦQ�cp��wd0�f�I��o���1����.�%y�{�EM�ܰ~�O��xއ��x��T��Vt���T�C���Q���ڞ����E�q?�U�����:~�ۛ�7����A����qkߠ���o���/�DF\00L�c�x14	�����3�ᣁ����r�G=���h���2M���b֚��s��>l::{�.��/hӇF;�l^�=Ok:���Ї���&;�g�i|��!f�?��q���������1�eH%�t�Q"0�0MI:8S��B���d:�3�lA3�ZP8��k��������L��
̚�ہ�=o?04Tށp���m�01��qm ;O2T�^=�]�6e��
m�@&�q�p&� ���:#��뵫V|��/5/d@���gR�1�e��ADB�L��F����#A�oz���Ά��U���
@|H�!i&L�0kMV�}�st�k��!���5	��4Χլ�dX�9hI\�:26��C�����L���έ�г2�2{�x��òYd4ъ'�s�Hc��s)���;���0Dc4�C�	�P����>β(�^+Nu�N?#�v,�/%���'-Fȴæ��1&���!F�J�+����598���D��7\Q�{�M����/�Z��vYEwN�	"5���i���x��y�H����0���Y&�s�Ø�2:ăs�0>Kp
���%K�hdP�>�?�,�.����pZ~;6ǹ����0�'�7�)�5��G��l���C�������G�;��ٹ�J��klgn`��M~v��+�swH"{�%;��uc۔�!�9;��!,��O6� c���9J�E�n {���Fq8�d
n�>��J��`f|T14St�����9��o#��.�����<�%�\I��ʑ�G8"�Xs��'�?0��I��"^Mx�����3��MfΞR�%6�A�]g{C����L��y���:n��3�c��h�
��ٙfX�2Y�8|� 1.�{ (����eӵ��¿�X>��a���ې��bʖ�>���Jd����ggƉ'���1��m$~ܛu���C��g������]֚��½%�|�ƴ�t�p����zqkg�DbD��q���|j!���q�,�y <`�@�l%>����r	�Ϋ�mC���g�lY�>���\�8���nH�h��F��_�Z9o̓1c]�Au�E��m~^��}Ӱnڱ���s����MH}z8�LX�r�=Z.��w.�,�=���O,��b�ˈ�ھ���cqp	'p�c+����������Qζ$_t��J#/���V\Ғ<�L9�.W_���p��n����G}l!�h:���.�;�ۣ�f�"?_��5z8���U���v�ˠ�U�‵Z�#��83���	%�7^�W\�	��K���_(�L��./��i�l5�z���<��e�>�eBH&G;1`&I;cMfiG�,��R��p5�ۧ�Ψ��g{��(%>�zg^���_j���.��q.vriz�lԟ�e��FK��ľx;���i=�0ƂǂY��3)�2*ψ�P�ÑX���3h��W�lM�u�������L�?�����`Y%��UbښR�˜�ŗ����b�mlh�A�+r���|ۛ��U��R�λ���O�4>���}q��wn4Xtf&��f[�.Qϝ���`B��<Cj1&��ca�%i������G^�^�x_��`ͧ�櫗�&�+��Y��m���2��?��Ox��R��5��Z�˨v_�����Ϋ����,��(�i�mmp���Қ{��χ�~uq~��p��H������X��,���(.#>�a�:��p.X����,4Ӈ�ak�"����~�W!ִn��ɟׂ��R㦅�cN�o�s��g��3�=�n�!u�O��pʒo�zu[�[�\�����|��c���%�q �ŢO7z;3o���=�Ȉ�TlC
2���"���F����`ه�~1K/'�����Ux��^�.?.����K)��iE��M+2ǜP�˞�Ǘ��ң����m���/ۚ�0VM�ϳ�������Bu�or�c�ty8�����S����D�:��Uאz�I/�G���*�sAN���4���O�i=�G䌟��9�z��;����f|N���f3�CgS�2�칾�������R�F�LE�X�~�
}���z�u'���}nW����[�5�|�����}z�6�頶ku]�8��D�\2"��q^�نTdL{E4�A$� x�4x�8�"I�(*3Cn�dh��;�o���:��S�>F�#hZ�Ɂ�r�Z�-##s�_�J�����]&�3`Z���C�U�?R��m��~���S[�tjr��P=���h9���aN���˥���3?0��wʿWc��a�G%ള��7�G�U&�f�{�]Ѭ��4���ȅ	��/�L�D���6;A��N�97�&���i22U��p�YV��~�}�n�]/��R]������+��ۻ�lr���b;=���O�ρ���^�.���|_	����)�S@;�4��/�L ��\�	�Wز�ᓑ`�B���S����Ē��_x�md�ˤ�$F���d���Ȝ�}Y*1J�ϝX�NNg���k�Au5n�TϺ�4s����f�J����e���������Z�����6��QLFL�^v͐J��.#E�&`��X��0��/�$B14��b^��0(D�w��t��zQ�0O<b6ʓ���<�17�*((������F���Ժ��v�^U�{w�\�䳱w��>��Kͷ⨫_����j=����b�/q�/z�ĞK����㸌� �B}F�A8>��D��EI����������>�&�8��c��4���9���5's�C{^nvh����t�"�7��G�SN#@�h^EXG�Nm�X̝.e-t�k�s�}�ԃ}G��+�3b.9��Y�VXDL���!��Gz90N@DxX�$)��X����P���ۨ"�k�?M�vﶦ��o�Ѳ���\�,3����ia����<oJ�4�+G����N�}�>ٟ�ǖn�mc����R�O��}_���#lK�v8�jo|���?۵���_��E�-Ν�K�=����.��\cQ��+@OF�Fpt� �h�2��\��䝟���{��    `g� ��ۘiY�LɣU�-G����������Y��=��M����1�W�ֲw���s����h�H]Tg�N��B�Gԭ��f򣸛�V����>%�\j��������PM�XB����	��p����aS�-�����3�-`�-�|ܤ!i���^ږ<�s�*(��+O�֐���2����h�kf\�6l�&�֘��Vy�.y�^���|uZ�U?�-gu[R��?�;Z����5)���2�h��������!>���4�� :A_�x�Ӝ`�h�?�!.��2�I�R�?W}���n+p}@f{՟����HYp�{N��ܿ����%������b8������� 0��Fq1�[)��_W@,��b�ˈ�9"K��)�F)�e��B�T�LӘ���>i���Q�X��O!�?`V��f%���T(��	.W((�جu�ŝ<���ͩ�4��{u�0j�95��z43�.y�'j�5v���r6���zm`���X"[,���Tǐ:�#����\��;.�$G����'���Ne��䟕��`���=��$a2~sbČۜ��;��,���!sn5��Ӷ=[���y�.��U�D��ޥ�u�X��$��xQ��r$4�ډ\_,%�u�..�t,5$�0Ns>Ð"��.�B�fH�e $nP8_Z�BXC3��~%��iز�ʦ �J4%
�)�5�U?��|Cf�u��gRv�oI��D��%�D�J
%Pe��ֆ�Ξ9��r,ݘzU���p��a&p��kc7X�tʲY��md�Z�����tA+���S���|H��*(#P��aj��Ʋ(�Y7�\�M>�`����庯�a��W�)�����}O��}�.Ӷ� Cc����Cb{Vi�u�:�r'�)�7�\�z�]�9��j�-[��d������g<������j��3o�G��B���C����u�Y�s���|���(��B��lȦ�3���of���]S�U�d*إ�� ��4����4'li�90�{́���K�u�͎�Y"씗��6���ۼڝ�o��Q�GVM9c���N��g�{ם���G��`J�#bX"�6b ��q���y.#A���C.,�r4?��V�AS\f*��s�3~������`�:8�Y��ݒrW�)�_�+�o����-�J��d��N�ܺw�$���TE:پ޼Q�`gӟ�����է�B��tܳ���2g��7OC�h.�Rz1�e���`�Gb$�c_J�
cp6����yO
�X]�t-��!���6�[^5G>�-/pvL���3��\�s���RyC2}l猀?�h����`��f���l�hKc����?XjO;{�_����}��<�����(��̗�Q������dL|M4�����DP-
��7�h��	�Ho@�E�����<�믖��h��!�p\�cy3㪤l������+1nR�4s������f\?���m�]�n��
�)Ǌ�Wn2�)�N}��0m��5/>�'����?	���O.� c����I�� ��E �FX,HO��7��ˎ��}�,���{2-��)y���/0^��aઋ\�	�9�������/��R5V�ɉvk3oX��W��1h�����u7ލ.޿�K$�D��U���.#>���r�H���A��"sA�o:|8�]�7� dՈ�c%9���I��DlHv!�6^v-�2����5wAZ*8(���1�jc���X���I��� ߨ����ڲ>������=ZS'�Ow�{KW���A�Q<�D�:"��	�����2
��	��8C�`�V����6eM�C؉J#����x%�Z��������a֞�F7�#��AmT���ڼ}���e���lFͫ����k��F��k��Z��R��H�]t���+q�|K+�y���0GĐ01�|֡��N����`I �L%9g���>ԙ*`�-��Tb,x��1X�ʌ}2-Ŵ-Y�+4�02|��d�>u4��J�;�|��]�W�=�F�|N�;����糉9ZX�i�=�=>y�6��Ƞ8XXN���ga���Ʌ`�r�A�@��5E�g���Bb����纡�?-��_�˖V]rU�?�z|>�B�k��A�K�wKje��U�.W�pN�6��4P�1:؋���{�v�|���:���S7���UGYk�쌙��L�o��,�c�B8ћ�`��|Z!��[Fz ��P��Р�i�B�Ť���7M�g�ʪ�� ������pi٥m��1Gz����&����rSi}���}<}�*˦�a�ܗu�� {ܝ3�#��Ӫ��[��S;�޴����i��=TH&�XH���@3�SBc�`$_t�A�`\:�����Z�iw�0d�=����/&3����}9��ݐ7	F��;J�����i=����.��uM�Ww*�@�aw�m���e\]��q�Ŕ6��s��jR���K��P�^�LC���2bd���$���!aL���k�]AS<@���n�����0����iQ�ސ,��{G�.�l�74\���@����/�F���.�\ϺWۘ!��^a���aH�9�=�5[��<�Z�5�n�&{��ɀ��M>��/�L�&I�D�?`@���,��j���������z=��#*G�2��u���!.-�ĠiAf�	1��9R|Y*8(r]�|`C�pkꈻ�uЫW����WG�
��z�y�f�-��C���=r'ʞ�Z��X&�+b��IiȧJ��\/���ɐ#0��(��"`�nr�vu��^v��G�t�,;����0Nq�����9�ݑ�=G�ճ١���*1�Q��L���Ĵ{���;+���9�N��q��[�e�D�A]����8��(%΀f�9�xHq�
(#N��ajȲ�� �/�6����.tKv\͔��v���wYp~�F~�(z��N3Ϟ<0��!G���������R������w�O��^m^��L�MZ=��^�֭�0��\*���z���V�<��y���2�$Y¸8��C�2&��.�{��%IP(J}QW�EH�2-#��@`��,��%�4[ȴ��L�0aHV|8�/�\��e���z><si7:#����9�r�m�q���W��^p��26je�#���"��u6_��Ŏu����K�iY�(��bj˨�&��+
����"��ݘ�V���Й�t�����}	��AK>�V�S{��0Ǘ	�i�%�NK0kM�04�1�^y�A��z�l�4=��!�������z��n�#�%;�'���jni�^nJ���W^mi���X.�T�)c�Ȁr��TcLy5����o3G��~�0`Zg���jɂ��b-jƅݣ�gC�������i�m	F�F��
.�vbzD�{Rd�D�J�O�J���鍺�N�g�W?t6��.	g\�գ�����U[l���2�_,DA�~!5]F� ��0d1xI	_��E��������=��i��?���f�:�� �L���ef��19	��y���T�BI�6c&򲥸��Fas��MD���㒳k{y�j�!��ԡ�:���=�6�[��s�Q��b�H���`��|z!%�\F��CH�$���]AY ��48�L�g�ٺf��هA.��͖��m�G�l�$M�>�= M�C���������ه���k-�ڭ�y��#�g�m��Z(�8��٩��ƪuC���%lw�����f����yf�˧Jz��~/�.!�\x�c0x/�Cp� T:��#�A��W��W�!p�M�h��Ǹv~ϋĠi�e�	F�F�o�]��k5Z�!�Is3���Q�*�iM���;km掩�7�;~�O��p0�nǋ��n��u�DXD� ��0�
c�˨���r$��v�P!�RT�e=`�q����7�Q�+�%�ßr�#\&11j&1cM�"F�\��R��PR����7��g��4�ˤ-��yUvZ�c;��ۊ7oA=�#e����p4D�TđY����M���`�&�\�!��]F� M30Ɉ������9�"��ϳl����7+l�    ��1x���0���brش����`�bp��@�Ej4���X��F�<msMd^=�G����]W��K�]�5����=����N]�9��yَXF�̢0�dH!�l�"@s0=����BI�o��!`�l|�'��(4�U�������Pi���V`ږl�s^�� (����z�HW8�x��jp���
���DwE�i��w���{G؁k]��d5������n�3��ۧ��K-��b����i8�ɒ	}L�C���y���?^�'.�.�͋Q���0y5�[�6&�JBk�FIh��0(��;/�Y���bGs�#��R�ku%�
+O�ƨp�PAWֵ�uߔ�3�Z�/c���6~��q��{�O1�c����I��)�R	��B�\�t�z(˺�0mK�_y��&��i0� g�J�09fZ�Yk��M`Αad���t��ӹ0*�^͝��'T~������~���8�y]gA��G[�ҷj�@��y�����?R����@�H�T(L�:�cH�d���1
b:��O�@��P�2sF��^��r�(F6�t4A���I6Nf|.���)!�Ȗ#��P�A)�=x���Q�{���J/��~dQe6��GR����K��*=�m�!�zo�%��|��H�o�~��EE/��P^�0�K�[Fy L�ʣP
<&	}8<����,Q��4p��M�y�$�P+���b'�̦cg̩��О��Z*oHȏ�ݑgݣ�4��&O���p^e�m�7:��h~����:����s ����F�= ��DO���g���&X�t��!��]F� �F��.3�.��H�����^�����8���ěu�|������i!�m	����+1J��۩��j�P����̫Һ��{�O8�i��ŝ��moW�Z�8"�Ugv3�b�����S\H�,� @�8D����R�$݌<Mbl�/n]��l�Q�øC���� �V^<XZwIK�@`�Q]x���Ҝ�Lg��t&�gJ�oS}�!�*]��0�6��9�#�p���ǄU���⁣{��Dϥ4�r���|Bj.&����� �x����_������z <�}城����/��P�l�'�?���$4�$M���-���_����ِx�� �mv��V�Wko�8�5̇��i>V�L�7�t�j�h��?2���[H������T�-��b���/8YOBlm (����������tr5o�?C�����z��[���4W6����#d&�:4�L�4%Ө�����J�Rߵ)���ڇ�Q�}��Ju�:�v�1?���L<�����axC�kc2?N�:y������;sT��I(��2����2��hc ʺrL�(]*�'��	�o��d��V��zZ�z�C�%De��7`Vy	SJyfna��z�%=i�Mm�S����]0�nru���Z��j�PO���������#��rr8^w;v�c���/��OEoNz��BI����I�� �aK�?��Π��,�N��&t7^Y���� 2��Ęi�e��ˡ5G���[�cd,oȥ[Ti�h7a�t�{�b
"M��z�k1�ڳ�P�����`7���0��c�Q\��l�a��q�)�2";<BTk�K�P(�-�$�e��ʶ��ɼ)���Px���ϵ�#v���#\Z��Q�:�Z��l#s�_�J�����5�v���n*g�"��f[�6=R���scy9����!����}���D��k���?v�o�H�L`0F
h��b�w)4��,q�l�-���� ����6>�W7��^a@ǻ\t�?Q�5�s���	E��	F���ptd͋GG��J�����y<זnڹ�jצp����`&��#-��̻أ;m��á��b>{mҥoxc��z]�g�SDQ��!��]F����}���9`����#�L:[k���gr$g���\��)_�29�񈙌�)�/�򒥃�?\�jf\�=��
O��[�]ޫ�y4|��u�����ى	��"���Xuu��:��݋�������ճ�
x��^Lp�4�m�#0�bºM��ci�M��WZ�����-�*0�`Xκ���/@eܑ��2�HtF�?8�^���"��Î����Z��Z�Ԫ��zu��,�ڬ�\4<�NN���kݞB}ì���t0V|}W�O�����<��RH��ܖ�@3L� (��������#H6'h*��6�����7.��;M?��dd%������әY���Y����4i.	���3�Z��><j�T����/��g�z��޶�=miw��m��..�n;��L%����5RB�Z|Ci���5�� F�4ʡ8FB׆����%��5@���
j9/������J�_��|�53'f��y14�M������qT�\�05���E�����R�/�����?p�dop���2���}tV�d ��g��\�|5���g�H���et����营Q:Hj�B�FdV�m���]v����G�_M�]M�9ŔVc�ϸ&���$iJ�%zn�~p�C���ñٯ���-��G�&���=Κ&�~�L����ڮp!Ӿ>��{c�]յ�|�����9@W@/��x.�@"(t�	����;$8B�M�9���fЂcE`4�ߓL���`m����B���7-��;R�����h26V��pj�Ɠ�0��6N��-;�nc^��C�4Fv����YC���@�{^�:;����5�f�Q��6J8,!58
���R�� �h3xF&jC�e���Â#4~�����t��͟���*�����^%�y�1;3g~�i}��N�3Ϟlݐ#̗����>���3��{
��y����bJ�>�ֺ�~l�a�C,z�!�hwkcH��F���:����+8�1��!es_F� �CeҐ44%�qh�$6��Z�x�gihn����3LF?~�_�L^��Й̚�-�[�y�5�r�%C��>��q�.w{~t�1��W�A�)�۱po������.&,������
~Wv�Ѿw"J�#8���C�0溌���0�8��� ���CKǴV�J���Lp�3:��WV��9�?`6�51n6�5cNe�淰�W8(5Z��*6׷4�����*g!����z��|fѻ4�I��]�]�K֐����F;Jb񤨖H��ȀJ/�gR�1�e��ئ��Ā���E (Eax�Ý7�������3������~�3�|<#ȴ1U����[�+o(���,�@����H����I&��F���]�M�+9+��Oqc�~*����q�3ڸ-��(�t�K�4�:�h(1�3��C4�]�ˠ4�a�N��(K鼯1o�=�g�xK������`bȴ3�Tk������P�ap;}��=�Aw5B��J���F��7,"R���-�0l�/��֟�+���Ӟ6���?�b*�W��"
`:������2h�.�� X���y��TPc>c�M�g`��Q�̿I�-�m*�ɒ�ѽ�Eg�����ƜR!��ܠcd����2c{R������|�F��q4op�jk;�i|[o�`@���a���-�X"���,g��Y���⾍��e�����5�C�3�@u4K��}(�|�;�C ��R�\��)�?][�ͣ�KA��r`���z���\��O4��
Ϳ#!���F�J
�Ƃ�����iS����(��꜐؅�k����T�p�O�%zE-%�v?�拫/��I�Ga�R�p@sj��}H��2(�P�f��hh�P::û7BS��=lٖ��|��媢��Urȶ��X��o��J�?%���;���_�����TI���p>����x��"o���ͽ���מ5X�ZS�.]԰�1��N���c����)�x�5KD�B�pf&�� �Nc1��)@(D-b�&�q~�@���Nf����Ů�KͰ؅��~�r|A��7����-��s�����7��#9c�>� �r��M߫d�X�65�L��2K��e���O��M�n�׻�    cE�oᔓ `������)���2���qwhg9%�qw8��t@rj_Ԡ�����F4��F �tfc��pi��#����$�a���+�����S{|=�78h�x�T���|������,�X�)J5���n���bdP�8�G��/x�P>N>���-#<0�09|�)���}���3Fz)��{��i��"~��X���p= �����ud�gd��y7$W��y���PIB�>���<��mq�R���j��Ǽ��*E8�r$���mS��ÓDW��[�ܤV�io�!��*�8��CA	4�|(����{��h��``ԠN��i㲹g:�� (�o�ƶ4�L�"�o�e���T�Y`�M2�_���2Q[�*�7��a���)Ui4��uj"��n0��%��j��,Ԇ�S�|g��b�����%&���LZO>�����-�;�&0(�,�r
０���&|c�u5�glY��|��J�1�,eÏ���cҖ
>���c`����N�>���5�.m��]N���L�U�o�|K��fל�Gſ�kٹ����q~P%��Ħs�h�O-�U�}���򩅔_�q�4�04�JB��F���[�K�ɛf�2� ������zЈ��u�����qz���8���8�#�sY*	,\=&y��Z�4\����'Օ&7�����)����]��k�ϗΥ�,�{Oe�҉8]�Ŏ��}3H*���K>琺��/�K*�V���p�waY�O^�`'s�a	����,�A�1�E�0<3�u��D��(�æ��&[ԇ�5F��J�����?Z��qr͉�5��{u*�!�m��t�ΰ�t:8�(���o���j��u���3���b�/t��si��b�w)4C��c1'�/���GcY͔&���;?sOs����wY�O6��2���8-���i9f�ɞ��9G���򆃒c�wn�	_�����s�G�^U��}k�
O�p���hLp��37�ٞSk��{G��uq�b���������TC�1漌G��e���Q�o��c��!@mpH����;���ˀ݌���/0�I�>jf�0m�.W����l4~��M�S}�&��:=ݫ���7;聝Z7
Y��c|�^$�c�є�M�A��q�/.��X6� /F��C����E����4C1`�	݋<�t�X�P�uM�f�z�ψ������N�b֚,��s��jϴ���#M�6�:��������^掳��إ����>�>),<�8j��h<��e�š�Dzc�s.!�hH1ƌ�#@3,��r8V��}��	�O�0�a?bc�g0���_$ď_�*�$�̸.k�o	�ynKh����JGX����EoO����ޗ�A���O����&{�)�`H����;nn������=�,��l��{�R���|�!u�]F� M@���0�b����;)���^(.� �e���:���EJgAi���`ږ��s*((�=wh�̱��\\/61�Uw2�nn}\��[��F{�?���tk��Y�v��h?�b�����D�DY��q��a>���9.#?�a�G�$���Ϧ��H2����t�*��A��QE��b��s"P&��6`&���%�؁1/�\�� �4�v��1i�,y�wW�>��zUu��?�[}��u�6��L�wX�Vs?�����.�?I��{�a��)�3��B�/���� :��>�����(�OF�O`M��~��mh��@��7��#�2���f�����s`��b�W�Pp$��l�LwK��N�]C��r^՝Nc�y؅5OӁ�4�
?��Kkwn�V��aȤ3�:���Y��
q@�d��)�2"b�Θ�� �}ſX	r�e��ۆ���]�KEuܣ��m9��,i�g)��L�Mz�L�M��ZN�yI7�����e�P#����[�hk�o��ɽW��v�!K��kP{p�<ݶ]y%,}��ث�mq��D�ψ��"�!��_F� �C4 ��΀,|�O:(�gMM,��"�Aǳ�Z[�Y��{��gu���gr��2��d�E+7�\�$PP��uĺ�wFq��r������@��F݇T��ѤEQ�6o����4�լ�8xq\�/��{��m(E����"C4�lF�N�_i?�K��y[�u=pc�A���;П�8���G�n?'m�/�1w:2U6_�pe��9ӱֻÎY�ba�ؼ����1��'t�)��k,X�x8{m���y���y�֩��P�xAH��P�0�
c�˨:B� ��9��H"� <��^�d�g�{��Azv����6�ғ! f�6�3����X0�Ej����~(��G�yU��9٘�I�����I涵a�x׽\��֬͹�F���������%��/�c�e�*Fo��Q	)�_Nˈ`Y��Y&�ADR�E��F('2���F�X��g�٢�s&Z`r���h9ݛ%=�嶻vK�p�iѺ��D2Vc�v�j���Tg��[rkv��"n-�'�==kc�nY��}�>۹<���=�J�$�+�a~�|B*.&��� :8��9��q�����Z��J�N�MM��������^�<_Us>T����9-����Q�;r��TX��W���wE�N]�u����ߌ��c.��j���6�N��:�?��j����ӵ�8�K(�ˀ��1�"�!u�_F� ͒�wM�3RA/@�8x4�EI&������a��p2���kd;[�)[�W�Z|-�)U[��_V12T~ApG��!�Kü�?M�Δ�W����Fu��M����s��a��'j���3�j����V�W��w���"R!��[FxA�7�Q ���ԃ!h�1J?)]���e[��r|�9sT�cϕh��ç��1&K��\1��+o(�T�ѵ�mCb~U��a��-�˽Z5�f}rq; 8g���>[M�֦O�Rj�j�]�����s*C�Pr|��{9�h��k A������`,��>/d�����>�Ѿ]�FӇ��/lf�.1rf/cMn����z�W0�w���c���z�mA�W�ϭ�7&�ގfOX�'u�ߨ���Нq{�����Oor�.�T"�5䂁8�WD4�c�ˈ�a��  J�q�	�uG��x�9�$�,�Qe6 d�տ#e����yP'74.W~Pbk�|�U.��0�]�K�.�v{^��o��(�cBDD簞��#�\=����6��O��z48��1�2b�5�nI��b�-#6��(��4��a
>_�AH�G�>��Sy���5�G��o2�y��I�ʎ���ʿ%Շ�uO^Fׯ�����S�<���v�����L�^v+m�3�ѕ���ȋ���dPݚ�������C�7����#v ��Q)�?�Q'XǢU �ł\_�g�d�l�D ���樲�w$�}+��A3���q3�ô1�>�y��P�apy57����;aKV��,y�(U�d_�nW����ﯪ~�:g��9⪒u�uNki����i]e�HE<��0�dH�l�"���W��'�������8&�^�v�pӢa��+��iy�?�1Dg>��Cg>�ic�cY�ב��k~�)A�x��P���ӗ��z�9�HOn���I^s��gG~;ם����Cmy��O�����(�"#�"ǰ�hH1ƌ�#@s��2��	�k�(�1r�tӵn���9.\X���Jy:�)�
0h"��"�RL�c�9Y;����e��!��u��3�G���l�v���*��y�c�N�@�h�c>GGw9���g��Y�wD��#����r�Ȁ��EdC
2f�� 9�B!�y�g��	�V�,���i� >^q�9爞�j7���/d�yN��q�3�T�����=���J������	3T�a����'�7W���k�D�j;��,�Ǯ4��{��tN��M1T�w�C�ء�Kx�m$�x���;��k1D,���� Jq�ZV%�����������fF?'ռ i	��`ږ�$+�u�.W�0p5�.    O�}�o���2׭'�-6�R����!n�֪��j�N��-�V[O�6�g�c&u�6)�.k���y�Eb>��ҋ�-#=��9�i�DEI�[a߁t����ӐCW�&;�e��m�w���mT&��o�L�u̻Lyy����/�q�a�f���	�F��ۓ>֫ӛ���t}L4�3����Þk�6l�t�:~4�������)>z.�Do��Y�S
)���2�#Q
�p�xP����MX����8ɂ�����xC��ߝe@覄n2L�����g\�5�+G�<g9�Tb \��!����^�H޽�z4���u��c�.�;��|R�5�Æzm�<T]���-Nw(Q�="����نTdL{ER�B���Hc$�P|�a0��Ҋ�7�OSA��3ͷ�(wUse��m�"��٭��O��8�ݑnj��Ε�����u��ϭ�E���y�n8N��z����ǥ��D�u��i�������2�<�{�8/κ�o�]�2
�?��*bR���(�)&�H�4M���"�	D"��}@��~���)p�]Uv��s۱D���ul�~�c����s`���ڱ��Bo7tv��Mܫ�0�}�{�5j ��������f��h�7]U�`ϝ#8�8
��RsE�B
0f�� �mH&������hZ���$�IzmZ�(_D�'�D�HP�s�q�?�c��;2�����N�m��j����;�Jz���x=��o�i��!����z|%Qoꯥ���&~uuI-;΁���cm�}�2�,4KT�(�a6��� ��wa|��M@�������$8c&�%1���O�~���Qk>��Z��[���c-�1������3w�I�;�#��,�J�o7�W��`t9hGzʊA+U�s'���u��:�����2M_������]�!���0�iB	7($��J��gR��ʨ��?u���8�6�!�R��kA.�d�D���MO��ύ	BT&��m�LZmʖ̨�y����J��_b��L�zC��j<�f_���*���=�k�na���v�/k�����IU��m���G,#���Ct�*�R~1�e��4T�Ł?�2��\p��$�;�uS�y�g�Y������xݓ���73�����;mL:ߡ5���z�+�EM��.`�C��R�M�?��2�/8È��C��[�X�$�M�o)�I�,ި�J�0`*�'�bH�\��!@S4!C�X��P��$�f��N]��Yj�	�����?� 	�i�c���$��S���˕?����nF�B���1��j���	f�?��GO��u��+�sg�:z�(�_�k�xu�(q�/z�8L2�UH����Q@s%�3�5(J08���*�]����>�oU���o&ғi��Ҳ�0���!Y1�n;�Z���@�ޙx�{Y�O�y���D�:���w�G�.��ףk=B�����o�f��i�����j7%��'`���tBJ.浌� :ș��Mct�����8���4M���-����oZu���g:�������n֞���n����l���M�tll�c�ꪱ1f��c�T�����õr=��|3�-���v��]��>;�]6Q�X�%;%PG�����dL|M4��v�����Q�0MO�[s]����!��#�ÕMG�ѥ;�B�B��M�2Ϟ�\��!G����s"z�cb���Y�>��զ�T�)�!��B�<����uv1oR擙:��b���y���Q������d���5=#A��2M��A�&��p��2}-��Y6�`Øw]?Rd���'QFȴ&����&AG�9�,�%F� �4������w}�!7�^��/M���9J���M�^1M]�X������Q졘�O��h�DQ�b�DC�1f���3b�v���4p�
x4�#�̑�&�6P��
,]��[�� �IL/_�L�;5j&ΝcO�_7䅷_��J�s�y\*�ݚ�-tw4zO�^��z��5���(�d�Gz9���u;�|���50K�T��.�{�		:�@(2�mHEƴ�Qd����3��$���
��i���yp�D3f��/�Φ��1��q�udj��:2Ǟ\G�ݐ���3V��P�<,�z��'Wws��m�4`�������[0Dc����SÛ�`-����<w���iŊ-��*R0�HN>㐪��/�J�$P��@�9��X��vn����)*}D�a[w�gj�{����D���� *�~|�]8�R+F`�].��.����n�}�v�����Yz��W�3�֒����a=\�L��[m��_8ì�&-��W+��-��������0Ǡ�����]׶�ʶ�|�Hoǜs����  Aį�8�eI������^�eﳪF���{�ZDr MC�Yl H���wa�I:�� �o<x~����d��^���m6̩��9|�F%eMT)	�Y�*���j���_q�۶��&�:�pҚ��/�����h�k�lOv�֤-�F��6ڈws9C��fڭ�����V��aaBɲ醔��"�h���Y2<
� �K��0�N��:K����t��� #DR~ϡ���0$�Zde��OK����dcyQ��x��=euf��YkW�Ԩٜ��B�:���ڵn;lt�=���!=�u�v�v��cϿ�'��w����DB���h�4�B�4Cr4F»&VNw���JM����J�{<ǵ�E��~uO^��qvr�Աv�����Y'ܑ��	������Cť�-*+�ɱְt��\�K�S�ڙR��I��帻M�=��p�lv�V~��V`e����n��Y�R�;��+3B��2ˑ��,t�7x5",Ɨj��9��������ޫfl���jM1.�ȏA�jL]�Bk�cC��Ra��z���^��u�оW�KdK�<�.ȵ�.���,5n;��r��p���g�l�$�tL�(g3���ET�,��6�c�s8x5�F	2�ؓ��0l3xv�:Ka`w�TSZ�!,��6d*�+a���
�Yq^��J�["Msns�B��Je�~���9�2�3�+x�ꕪ���,��n�w	�E�ߌ�S~Ь��_��CU+��R/����I
&� :t�:j����=R�;o��j8�����KCP���1X�����D��[�a5+�=��eM�z���;ٻg4����2~��
=Î���Aiw�8�N�%��Uq1n� ���a���{el:��9��`6��Z{ZDka=&�X��Q� m�j�(��ĞL[���q$�ՖDW�\W5������&/F�u�1pZ~)s�vldϔbl*��p�o0ŏ�lU�9R�rZ�7�ecy^M���jCkt���a����K˨4-j;j�Ɣ~�_����1#�/�M7�$_��$@�8�$��;�9	]&�Z�2�N.�3�	u����s�z�x�=z:L�M�L
�cؤS�D�)'S���7�[��t?��p��R��箂�5��{�b�Ec�:]���0τ�5������`=���n���"�:�bH��."C��2�q
GÒ=�2��	fS�����L6������֏��E���{��9Q�س����K8��aK�<VX�&�],���c&r�4��k�>`&[�1"��43�<���q�w�|�w����������1%4�&3����;�k2Bs0�|J�_懦?����|��8�O)�$���K�N`T13�9�Z?�I=~���c�����3�Jo8���:��P�����o���`W�2�ޯ�:����|�ߥ�������VWʣz��[o*�������٥tL�iMӐj|Q^D�8p�q(52��q�J�TF~[�]�;H�6��q�{���1�Ng���3��0aMF�����c?ȁx�ĵ�j��޳V���νi�:v�n}&�#ݝN��miZ��b|��u�|Gv+�QGo�����AA͋�,C*�Ew%4�@�`��%,%�Bw��FQ�1K��x�EKG�!�
(J7K:�n�4�&�Ǡ�C��1Q'�f�D�_�Ah�Cgu�G�J��b�5�^�u�    �6.R�ڨh+�z��&��V�8s�K�,�=Թ#ϝ�t
�=)��H`Q�s��!U����
�w�	��$8��]����y(U���_�8-P7U�k������pI����{X3�����8���C�8�����ј�Φe����H���R�y��l]X̸�������������O��a����s���{�\D~ L����0�;Ls�].���,�q����ms?�TQy�䨆�	P�.)��Q�:L[�GBs�cC��$�����p~o8X�+6��x���7�ɪ�_+*e���t��]���������hcZ�t����޽��3!f�)��E��$
q��a,���C�!��էR��챤G~�#��ՀJ�wՑ�ܼ���ɧ-ᚄ�L�$4�����ɞ�3�kRZ�u��a!���8��'v���E�U�Z�[�tv�t���y�l�z��󯑍x��O�-ę�B������I��&
��^-�&O�1���%���� 9Ɏ��/�In����c�{��H�@��Md(P�a��ֈ�Za1��!������ф��Oj�c� v0�����>�U�-��:w쮰�Yd��6�E$2S�8�nHI�x/"�𼈅9��	0Ncеc��$��N��T�ߪ
�D�*��-��<@�@��!S�^)�g�WdΊ���7\ҩ��kP����T?��vŚ�[��A�m���[8f�Ycջ��i��u��g&c����C�F�,��cʡR�/����	
�Q���(�C�!������@o��#�Q���݊-�u<���L]�����ZI?�V�k�|}^zC�9*M�`[���:���Zn,=;�V�ne�3e����m�o�Ò;�*\S�[4��I����aR�/����YJ�,K�Ŝ�� ^�&���^��CTX�n���Wx;���V�.�����A�+sҚX�cs���JO$����[Q�Ѷ^��X[n�t)�O�t����r�\ ܩ�l)�k�Ƅ��A�$�j[2��r��5��	"�!�fH)��."E��`r�΁`��?D��$���J�~��EU筀����z��B&�8���gC U�*(~\��A��q;f�kT���0��E;M�j��9^N���vU+XM�.��y��pܴ��>X4�ٱ���G~��c2�%�iH5�(/�F��h�%,�NP���4��%Vu��t�̫*>+l�%E};�~���L�Te��\���eƆ�'J���[x�a_���l�2�χ�_���f�J�]��(��U���s�ަ�֭z��+~���+hI��@m�y���K E�	�4	5S��R�N���$  ��m�J�e� +h�T��_����>*��m�㒚L�Td��C��E��J/(�{��cF�c�i�Z���m�M˵͖��|��\��Rq=um,�ŰU�MT�z�����C��X�
�;�k(=����#4	�G�H
���G�����`.�b������ϲUCT�0��Uϙ�ӡbpR�����̲&�Fd�26�>�P�Du&�G��:@+<�2����L������y�M���a\;�FkQ5��Ǫb���)���P�̤R�/���q���h��{�eI��	���?
�מ��G=��o�6����LʵI��rn2����,��a*�a���VK�>���ɤ����헉ݴ�U���VY��Cr�\=�ߗ�n�Li�L�a�a�c:X�d��!��"���ea��$������$B�p哷�`�(��	��f.��3AJ�����L?�#k�}`d(�`P5v\M9�Fb�z\��bM�ԷU�ZWVW�����s�y	�W<�i����V��隵|��*�o3@�x5��BJ��s	
�R�4�����"H$<�JI0z��M�p�Z�G�}�s��Y�9�f���R�9YKs�y��� F�.��O�l*V�2���D._�-���N��XF-��7�+B7I�h7���^���k�)��c
�4��/�_D� @�P��$G�,�s�9Ud�� �R5�]�����[Ƿ��\���K�[�5xR�y�|��P�8��".�n;N�4�n�kä�rY��:X!���j��ljަ��Q�Sݞ�&�I�����d� ��#f�- H�>�PD�a�+T�6��1>�BP��M��W>j3UӁ��e���ۑO�H����:�I��܎V����A���8/+u�]���ɵvC6�j��6�G��������e:�+Qߎ��b\kI�
�Jw�?�v���~��B��!J�,�.��Ó%��1���A���T���y>�a(M���0�_�cK���x��_����O|R����e��͠�'2����>�p��-�z`�Z��1�l�v�P�LV��ԉ�դ뜫�f�|��7�!\-����d��w�t��cvh��l�!���@y4���Q�ol�4� O�T��d[�y�`�k�S�Ճ,=����[զ':)���Iqf>�L@����R���]$.����Ҽםm�U���s�/w���=u��E�m&��OX/j��V|�.Y����Q��O�)|sӞ2�xHq�PD��Q��9��Gr�?/�p�J��I�\�qX�P����-�-�[����؊�qS�i�g|Ed�
���w �9f�2�J�x�f�����e��댶X�=�yb�b�N��[P6�����r�mM�ܬ���'�jH9�8/"G��i
B�4�a`�ߡ¢4��-�,��m����x�s��j2�t��r�S�D1�؜�{?L�'.�u�U{���Cv=��I�0-w�J�5R�j����ۍ�՜���-鰨��X{���(pW���l,���T��"j���G�CH0��,���x6M�������LG2�;?��8�B�\)]�.����N�2�$����g���g2���>�P*=����6��:_��Q ��F.�:9wN�mk�VO�Fؐ�|�=�(Mqv�Dg394��]�@��$��9
�T�S
EDʄ�`Vp�Q&I��~8�˗:����,�}�q^�����/e���(?�K�1e��bd��ad(��$h߫7q^��wa��7��Ӳo	�im�v�z�.�g�-�w����h�n+2=�7'l������BtL��/�_D� @Ld$xE:���wqhep໥nkL�ԁ��<w�9I&�|�����k�����6Ik��&6g^�Ħ�	0��o�z��z�*�_�!5"��tW�����sm�S�֫w,ɨ]�����N+u�ua<�0^��&�nN�$J���.�M�Td���3�����qMeV�xG��s�8�@�����$�&}X�6`��<aL�k��8��� :],ɞ�Q��Y�|��]����i�/]:��3�1�rU�����9ٽs�z���~?_��$�~u��c0�Nsȅ���"ߑ���aH�S�Y�4B0`�Px[u�j����=A�x�kz��d��'�qS!is� Oh�
��-?=9�/�K���"ܷ�
Ӝ����:��Hs���hǥؕ<md���}�^]��z*���d�܅��"1�kH=�H/�G�*��_,���z�p�"�z����d���.[ң��6Y��I1F�tX����g4���Dnf n��4\��n�5rAm�N�6��X� �h��%;�:��~v��I[V0���VI�::����n�o	�B`�}C�|�&Rp/V��i�-����A����͆=����D�!*�[��j ���..c�{�1�}�3��;�9������!;<�<���'��:ܻ�R�򱳓���q�^�r�k,�!M亴6C�|[�;�#Q��N=?��-P�6f��|ɦR�/��Ȑ�S�6���A�,�Ql�r�n�eO��V-ab��~���R|1%��-���h(�����^ (���y=g\�T�?F�z7-��!hN�ڲ�Nӹ*X�9k��3ps�n���Xy��YP)䇄�>L��j!��⸈� ���S��$������ �K΂U]����꺒��߿���&��^|_��O[    2枓s�K/�
��{�^��j�:^��wM��dU�����H���j`_�cGo���n;�:�^d���[�inU"hf�fR�/������,Cb8����#q
K�gE9�uS���A�3�gYz���}�@�t�>tJ�I�sR���Ko(()��a(�l~c'o@���Ap���y���<0��@��f��pE�Qiw��m8��+M��/y��q3�g�%�w��b����=��s$߇��Q �,���@kS?>S���~�^�$�$��6ZR{	�g��Ȗ!��P���E��ՠ1W��Ze[�m�_6��=�ݷR������.��x����'�ŰZmu����D����{ǡ��d�
)��E��#ԁG`aC-~%f��}Rx�{{�g��Hvt,���UK]�%���%E�9���'>�ŏdh�a)}���#7��D�����/w}�V��,T�Ѭ�6w��Ƕ��c��\g�Q���Ɯ��V�B���Z`�3�8#�vHi��/"M�4�4)� �B�	���b}�����x�6���̋�!������r���������I]������9C���􆃒�
���ޔĭ���ݦTE�i٫�3�+G�]il��ܮ�����ʼ�`���{wίjhd�AÄ�eS)��E���%��
�a�.���?c�V��ë^�dȼ�2� �V����%;Þ�?��r?L�7,\"�l�)#�[��MGk���e�e��7���!���&G��v<뎆s�>��+yۛ8��;��s�@�ݘ�9�pHQ��/"ʰ�	�|�h����ǉ���S��^��oߗ$AOv?}� �m��'��>���0�]>,�7$\}��x���h�6�;쨙FU��:�?��t~[��b����:��K[��/���r��}$�n~��V��I�
L�b吲|q_D� ���?�i
�'/��,���'W%�0�֓��(ڦㄉnT>�{�A^k���H��Y|���Y�vd(Қ�!��,5j:�)(P���2-3�P�M�K�r;#����Z��h�8ꆐ�{����)���!��������1b1�Q�����W�c��8�k���}�S����4�[���1¥O�_c�O�?m�re��yJO�����#�J�K�7��P.�x����ˆ�JKC�.k��Y�oܬ��=E�ɱ�����	� ��s؅T���"
h�H��Q�`I����E������)�k@{J���x�J����J�؉a�kv��U;~"sَM�w0\ɲ�:ctw��vdQŰ��²Pz������n�l�z�oFc�4�儦�V�"u�Վ�����AF����"�;�qHU��/�J�^đx�ZȂ_�z,BQ�:�\I�}���@S�3B��ڒScL��sؤ$��ϢPs��L�'�P�[s�L_Z���86m��q=��V�ӒP��n4��Da�}�-���p��'Ҳ�?EJ�g".0f�M4�_�#@�D��ѣ�C�"�W >[2�5t`t��O=ս��3\�W���%᷂�`R�Ɂ��̲��>Ȑ䟩�eC�ڕ��o��tn��	��~�*�ǆύ�!9�lL1�uO�j7��P��|�ugD�9�����1P�		�&+�pHQ��/"ʨu���i��[�SI6l���ɼ�5�U7$C�A�摮��#+57ƨ�?�Lj1e���g�qG���Pp�u�'�fEc�� ��]�2�������t��q�_�Uu�r���y�h{ج#���ȏ�8��3�B���)��E$�`F�� ��`3��_r
6x2z���`���ó���񪆉��n�#\R�oC&�0}�/�e�/�����u㠃��֥�Gr���fs*��K�W��5ސ�V���]藦=t����"Ƹռ���N�����'��Lb����������]|x[�1|Q[	;q&������]���yf쟥��rzL�VŸ��>M�/e�LB�
�>/����ho����DѠ�y�N2'(~y��hsb5��j�V�:�U���G��Fx��#e�ţ�|/�+�S SY'�_H>�."A0 J�,�8Ir(E1�k9��(�IU���u}�1%�-pǖ,϶L'��7U(4�.?�M]
������9�V0��^@8��N��H�Îdܶq��ru{v�e0l�FW�s��zn�:�-\���;dкRMv9�?�v�t�Tp��9<CJ�Ex-4�B$�x���a8|�Z�0�Ɠ)~���S���j�W��L�
~��L����������岥L~)�z��T�r��r�ܯ'���v�6��C���`Ԝ!�l��U����,�Ę�l1�pHQ��/"J�fa*?�8~Ƒ�Uk9$L�&��/=��I�j<Z�~�o����ULu�����9xj�NY?��9k�~�~��ki�O����o�c�b�8���H,uj<���[��ؖ�8�=:ߺ�l5f�g�EWדR͏�-�3BADO��)��E$� q"�/D�w�$Y����b�C���5��<a��Y:��9��&������Tf��U���0�d���P�T�AX��\�;�*��7w���2FLz����det�G�R%��J��:�����ޕ�B��؞"��"r�1�yHu�$PD� ��T4�	�����V'p�)"y��ƣj�����m��_X�V����2u�~���i�&iMx6�9ӹ�M�'J�MC���8Z��2�:�A����'qf�|Eu��A���o�����r�ce�D�WT��|���1䂄Y������"bh��`�Ȑ(��U�!�H��1���=�0���
,����G<�ל���ǐ)!���:O�9K�S鉄;�>�N�~��7�[g\o�I�Z6�i�.��ͷj�;�r-ܜmf�-�ީ�6f���5V�����<@Id�#��b���fs �]�	�X�ݴ�i�����Q��g�ַO� ?�N
2m��v�3�}^z�A������ZnNW��v8�� W+��^H�v�Ѫgj*��j���O+Ɲ�Όp�֍}�ir��K�f�LLL7��!�������L�#��.ư�����ᄟ���_%c�V��9�#T�Ҽ+�eBSad.�·!�L�>�9[��K/���Q�ےgW��|�q�m�L˓����5��@�c7��Z;c���t�!��A�9�h~������0�~sx��ދ�"�h��H��(��Q�BN�ը��M�����è��;��Sݰ����%1<����S"L�5ŀ1K���J�"�oQ���{$�ٺS!��#z���V(�����l���}\�;E6�n��W�l�{��4�P:��R�/�����j��$C2A�~
x��*����3��U����t��4���(��rT"l*��}�T mҘ�!hf͇�������J *ʥ�[�wC�5�A�ܼm�"�{}ktv�>�07s&��Q��׵�w��;!��`�B{è"�j��2�_tQ"@S�9�� �'��ÍgrF���ĺ��R���_�p*t��X|�RS�����0i��Ck�d~^zC�5��1}�KO�vǒ�t+~y��9s��}��-X�e�^����N{���A6ۋ�fw�;�qLLL��~!5�"��x��p
e�_��	�^@��RC�
��g��g�/�LrR���Ĵ�sV��Y�bl�9M0��b�a�~��.̺��+zd�}~)#A0��z�y���)���a�q��(�k�n�݋_@�1'̅`6�P�|g�wQFh���*RT�A��Y��²UD��D_2�>�ƿ�D�3����Y��ǜ�11n��tҜ�����ӡ��IrK�7�q�,Xz�AUzm�=l��N��6���Gr5�Oo��ݭ\V�vu��Ȳ����IRՊ�1����,��5�_��#@s$�BM1ʑ$]�	�A�?$s�������Wl�?� C�.���ݚ^�߭?���0(=NHGƲ�#�qG�6����Qy�!�����^6'��d�������is9Yx��=�����-�q��1��1�kH=    �H/�G�f��^h��@� �F��������>ۏgpR��9���6oY�*����C�4�K'�N;�$+u�Odz�[����QkQх��(���"�+^R#�4�U[�f��n���"?]��Z_�#����o����P315́w6��|	��6I�D)(m���$�^�,&��`f���Qa���y��cV�tRVL��cԤ"S�D?�К!��Pz��d��ĕ�m�3������ݓ\ֶ�Qj�%�L���\������1ٞppG�l�f���[���721L�m6Ő2|q]D��?��i���/�J������)�Uu^i�q�^�m�GJ�٩�æ����ӛ��A�IW|�{* y����8�j]Z�5S7�/vF[:��H6�~�\�r���V&O7s.}��%k�J�=k�I�
��fR�/���0,,�A���H�"i6� �G �=�!��gI�����:4�Ӥ�{����C&�2~�HG�	Ɔ_4�]D����փ�P�-E�v���}pv6���#M涋�|$k�X�+K>��Ӯڹ��*ߗ6
\��P0٨��BJ��s0S%l(I�p���#(�2�*�s�7�=^4���5�Ճ���K�ʸk�0��ݔ�iɼ��^�C�-{���Kb��N���`l��+;�M�bsئ�̯5�5��a��qR�S�$�߳X�'�3���T�aJx�������T��chà�C�W�I�I^�5�Ȍ}���R�h��jI��=H1&��>hR}I�g�ih��_�y���DG�}�`}i+IǊO�e�/���������q�c��;Խ]�mG���5�1���-�\���f��&R�O���/l�E�"�)�#p��.ތ`��>	v$[�lw~��ؕD�0u3J4��~2�%��>fRIۇ��>,�?\嬨B�KPvS��f�:=O.w������	r�IJ�폖\�9^TQ]S�b\�,%��+�ib���T���"h��I�gX�X��N2�F�����3���� �p�A�6�膾𷺠1.��>h*1iLd�֬��Pz��ҫ��/�X�+��k�I�G���⇻�ß�#.�qse�n
�����-�֙p�x~^���uL��L�!U����
�i|
>�p��Xx'G�(4�������b���!>Bo\��0�<��)7���� S����D@��B�wxU�T���nM�h����nu�x.�b�ጓ,v3ݏ󍇏�n�hmE���=�8�.q�PiT��B���p�4C@��s��K���X�`R�[�>ZMGyU�<�a�׷�LX�,�5d�(�Ӗ8	<d���0pA�����7���n�q�W�MN˳��'Ҋ�2�\.�t��|�7�I���� 5����V~mO��
~�P���B���q�4K�����8��_���TxPo���`"��O�M!U?�����:�<u�6���3��RzC�UAV��v�m�������ݴ�Y5U���V���FU茕�����]�s6�A/���-2������l�!E�b��(��*�Ȇ�\8J�{&D�!ݿ�q��ټ�*�t�mMr��R�6!*��n�4f�ؽ�Y�u�wu�'� ����mg'9뾹�5�8��r;����s��[� 1g>vu�"~�k�-mmV�w��u~8�V`Ws �-#�`(�3��#4�B�@����M�0�I^�,�0�0��y��t-�����o��0)���I5f�?SS�2���ޡP��Y�ׅ��v!�;L�S�Ք�5�9p�1jc���=v�SG�Tl����W����|%���,�D�buLL	sb��7�&_��$V$��������IbL�[A��uIz�"��f'��o�9����g\�$�ɻ`ξ;����sd�E[9)��uk>[x~�Ҡ��f~͓�Kf|�u���ٹuݫ-����=�]�/O�lc>h�I2�lHA�X/"H�f�Jyr�št*W`<~ߒ$C
�I��0����y<9M���NJ1i���3t}^z��T��g��<`���e��֣u�<_NL\�h�~���z����r=��x�����n��ȯ�Y���@�d�g3���ETH��=0�E�;h�C �bX�>�6>ԛ�m��7/��7�W�N��s���-n�cC�%Ǜ}��Y�\���͐���M�caMu[�>s�Q�s�X�lČ���Ŭ�m��ȮO�̤��Ҭ�������an�������"rh�Hi&P��8cq_X@�>������$ÖBM������o��o��3FNJ2�]>����RJ�ẹ,�7l����p�����iP-/��d�:X�	N�C�Nn��U�Smb����g���)�v��~Wg��|I��:�%!Bn� ;0&�_C"(��L��8�a�l�����"ۼ�鼝�kR��4}��>p��%iMܼ<���������6\("��6�9[
7�rt��i��VPnq��Ѯ��K�_�L6c�O���Aռ�H-��j�Z,p�S�Blsx���;�k1Bs0A�J��qx�D0��3�<�ó�~�*�sh�9:����^�qS�=i��ϟ=�����c���r��8B�G��vӚYrٿB�,��j-��w��7NHׂ�P���[�2�H��/!�RdH5;f����E�"�!eqL��M���$���~VuI۷f�����`
@|�eB`��9d� �ÒHx����o�q鉀��l+���w$v0���+�_����7r�1v�0����z���J��j���V=dЫ�O-p��D�s���{�[Dx ������g9�8��,x5�c�T��鄅���ت㪼�H�#0[n������Φ�E�k|��(IEf���:��P���>m��p��P´[��F�b�C�u�2e�Hnw�k��#�ٴ��T�K��k�./l��r>�����@*A��uM�, ���G�4	s�H`�rl�z/]��d���y[r]~?۔�"�N�G�@_j�<�I�f�Tj�3�R���2��2�>F���{G��qm6�SPw�}�g⴬�3��K�f��X�TW�Ab�yxr��Y��׭�&�X�ߎ�@�@&f	�8<ϑ �L_Z("S���@Ȕ�p����x5�c�dQ�����us�ϳʳ.�YyW�[#u��1fR�)���b�3���p�wms��Le}'��&O�=����\����zN��m��l^k2v�Ύ��R�Mt�t7k�Ի;QaHL�OÐ*|R]D� ��78ƒ$��tg�f�b鞀:���\�$筹���M��.��h�3#��Ö6��p3`(=QP�\�jF�e.ԣ�N���/�mBl4�5w6g[յ�=,0����3U��P��ٿ�o4��#b`z�)��E�8Ln4���Q$�؀���-�뼣{�TEa<�^�p_�g��$�?\���s��bڞ�B�ȼC�,�w(��,O��a��D�0q'C��8��`ݱ�GR�;�[����fte���1��>m�7�{��̿�)��3�`:�n(I����$#4S���	��1���$q����$�|�'�'J�_w�U�he�rq�����!�6����V��<�|XJ/ �Ꮵ��t���mMg�m�޴�r���R��T���?w9�r�v0{�O���!,3Մ�?���F�i�!.nr8����":h�qd��\Xhޑ���],�̈�H� p ���M\YG�£���Mjq~ �Z�6�Ŵ��Q��}}^z�A)�R	�Й����åt6�i���YoA�+b{Ȟ��d6�ӚT��bE��f��Et/�y�ک�C"`��rX�T��"Jh�#��6c��U($�Eä" y ����T�W�{�!x�oq×/s��:O��:�z QQ'z"�h<��>�p	��
c�'�vo�%�|�W������?�I�d��(�׮Վx�q-[�M
��,
�Ĥ�P�t&㐪|Q_D� Ͳ��c�X��w^(�A)6�LOu�}�>�H�[|*��5T�k��|�̑)�a��Jq����[�Ym    ���s��޹Z�̎s�?k��3vl�Ճ���'7�~�ܶנ�;pq��� ��ަ���p��6!����� ���GP$N��/�Jؤ!u(u����8�����1_c���>LJ/e�P߳cPB|��7\�O��ˋ�T\󍩺�t�jM��	�{�X'��
~��ȼ5fΕ:��td���+����7
�"���u8�\H��X."@��a��k��;�4��,ͥ�k�0|Ր�}UR�g������-,�)��S�O/�a�r���	�$;#R<o�ªu��1MM��jYډw�?Z�AG���3;X9~s��]R�;�4���̫v~��+�.ň��(B��4CI��ߥ�Y�܆`� 8��x5�b1"�!%��{:�F�r���_o��$�'5�a��1�J�#�Ǳc��Y�:�����ף��V�ώ�E����$Ǆ`2'i\��`����n3�:�5L\��(CN(���l�!E�b��(�Z�I,��X��x5Sp�c^��Y�~~V]�?��w%�Q=�%�Z�chR��'���~6,��j��7\O+����J�#��XZ���`nN�mݴ�κ�:L̮b�c��f�oCq˱����-?��Zh���aܓl�!��b����a.�H8A��#Iql�d���*�:�WU�/sP5�6��6��-�/��j�$�O�2��!���|�~�����ڦ.Ӣ�ڍ��U&ԶZ��!�uI�	Rgg����h��Vf�Jq�_L��?.���15$���;�6_(�M����p��y����pk�tdڒa��y�賽�d��O�%Sǋ16%�ϡS�L�?E۳$[JoH(E��;���[��Y��v�.�30[�9��\A��13#ڸ��p�i���Y��I�Al�����N�$�Ƶ�fR�Oڋ�����ȇKd� Hl��d8�P:��'H�3�y����׀d��}���bҘȳ63ݚ���
Ϋ�םw���ֽGK�Iu����9X-�ͮ[�x"�fw�Ⱥx2�r�&��=sн�>��e-�ET�@�\�dS���Ed�P��
#p����x5F1Xr�n�`˨�~�Jg����!,�����"�4�´�C��%��JO$\-�ɮ~�L�>ۻ�-I9��
#�ם>�i|Pq�8��V�:$�����ֶ����j�o�$W�L���ʡR�/��H�YJ�$��4M��_c�A�T��H���o�mس��S��J�Ÿ�߆L�0aJ�^�SX�|��k�q;�ɱ��gw>�8�l�(�Ƙ���l��K�緂:9��c��sܸ�,����&
���_=3f�
��w��^��8ׅ�)<���s�Ap�<ܩI��h�Z"��W�E�'%�6RRr	�g[�Ж������9���lR���Vwj���ʥ��\�>S1y�©��6}��э����z���k�\��n�
��_9�q��'��^��\�	��G0��2��dF ���R|����+!s���1`�!��_��D�Wh��
�'
��������V�(�r��ô�]h��8r�N�K4XG����b�f���g�M֬�D�`�����g�)��EvѠ`V "��>ȁA(�Q�˕���.�><�{^�H���yJ*0��¾ކL}%l�!_�1+�+���`P
T��8h��Jgx��62���~��4���i�u�9�Yw��Z��u���O��8�P�>�@� &6�]H�h.�@���S	�C���40ͅ?4�m*|(�x|l��{L~M[ɚ?FM�0e�L���2|X~�	��ͤ�_�;���1�����HW^/���C*���z��E�?�o$b> ��։�$��0
x�14�L��1�_d�!@�P'�4����P�A��ϕ��I��;�}7�g����x|���XL��mД
�O��,	���^ (N���-�;���Z�|��Z ��e�f�fm|����W+�z��2�^Sf��.�M�SNPT�����
 ���.�_4Q @s(��K���:��q��V�Ee_54�;�=Jq`���<�'ؒt�r�D'��9vR�ik��iU�jp**�\]��('��i�Q�*���i��4/���S��.�z`sG�~9Nhߩ�o�G����a7���10=�r��T��"jh��	�a0�����5a��ҵ�:�#���g���J�)Q1�0�8#?yY�Mi�s���DZ~h��cd(�������C�]Z��Z�a�<�*���Ѣ��t_0��WAwp~b��2�3~�_x�HӾ����l������h��A�$�0N�h��ĤKī�����������ڼ.�,頺黻�m��r�?�M��i��ٳ���PzB���:�E��c'W�G�Q�˛�G��_�M�%FW+��ݰ)��&%T�7gᛞ0����nb6`�v�P)��E��	����`*%�ꀲaMG��%�m��o{�������ӛT0ؗBɯR��������D`�:K�>aP���:Xs  M9�c�
��w�L�[RͩQI�{�ҹ��խT}���R���>�w$���c����bNg:�pHQ��/"J��a:X�q���(�Pak�3=�u�8���iR�s��H��mאlGQ��4��II&GOj2��Y�.~ C�K�
W5�5�G���F���h՛o�r�C����:-a�u��R����`�8���V��[��\e���J(p�����&�I���"¤8�`��X�����,��2ٴ����K��i��lI�C�е���|��r�3�Ŕ��Zh͐a�y��Ѭ{����u8�laӲ�.�:�ٞ�ڹy���"{�����5i;|����D��GS�¬���Bj�Et4�E�� &,p?�e��:y��=w�V%�4��[��oY\*��m�T�W����9Y���ǥ7����6W�t��Վ���,)D��)mY�+]�շ�h$]{#��_ʬ�Xu��u��CH[:ߣV
���_?s���-��^$�@�7����P��C�<@��M���`Ӧ���L%Q����#O`j"L�������'����R���]��av�������N�l��iy����ӞX��q�t���_:�-r:�\�6�o�X��lǬ���s(������2��h T�QK�?����R��<��y�v?����`������R��oC�N���S�Иu�~^z����	���U{��כ��l��(������Q��.f�ݡ�9,Y�P��v|�Шo½��Rw����맠��-��^$�@�P�+��8���?.��H���IX�Sr�}K�]]z�5�����M�hR�ɡ�Z̲~x<�!�?S�%˖?[{��d����ѻ���xGt��0Kcq"�#m���r�No��ڙ�N�b������~�M1+�f1�rHY��/"K�K�AȒd�~��!���"�5����̃�ʞt�U��<_3��tp������=&>�'JH��8N��ÎWE�Z+v|�GJ����`������ܠ����-���e���(k�ig5� �(�P��p0�~�tCJ��{I4p�a$va�j|raeFO�E�د%5���\'���%���T�����y:}#��&.dBs�Lh(�������jӤ��[�$�~C.
����D�V�����7)~�s�	~�ƶ�m��<���Xh�� ��I5�_��#@�P�T�����Z�G��c�w;0�c�����.F�t��ې��ń1�Y3�#K鉃��Q����-�Ak88��\���k��[#���ƥ[9QfS��]�d/g���O*�9��|��)�0s �{�&R�/�����7�]�$���{&���!	FO��a��`?�S?:��N�}I�/���W{���L��Te������O(�8�;z���nc$vN�a`;q+���w��W&P��9V�e��P������Ѩ���Aw�/N��2�&�,�xHq�PD� �P{H%Y�o8|�OE0�?1\�j|��a�C��\    ���̒����h��R񵟣�Bl���(�؞e[JoH�s�SA����4��������jyw�$jq��Z�Ⱥ�AY�e|�F����y��^�]�W"?�Q��n���  �s��Q��?�1~G��%�0��+|�W�)�Le��d�~bz�����xQ�d��Kr��aI)~��b����Y3TJ/��=SP��ڒ���������v�T�ִ����ѱ��6���{)�������̓A~�s���	6� f���R�O��H���	�9�a��'x3�X阉(�&���tX���m�����a�1(%�6b:F"aLDH�dĆ����붙��ڦܠ�]7w��Ц呄�w��1ٜ%f���ݗ��9f]j+e9Ag���Hϯ�i��r����~ϡR�/��H����a��H�Zx5�n�Mz-����6LS�ʓ��8�u'Y�3)�����7u��~޾��ۗ�Rz��x9�zb�j�Zw|���8��r�p�OƍZo�X[�uYOڍSe�vK�T��̜�g��
ҘC4�_�c��D��QhhŠ��Wc0�$�%I���Q �F���ʸ�����:��2u��6������������p>d+����>��Z�~і�r�;���:�zS�θ:A�%:cU��Qo���%�_خ@�m6恄���C2�_l"@�eF��u��.�^��8��t�7��{�h
�9/_�[��?hF������	k2қ�L<?/���j@PRc~f�F���1B:t�|�)����A�V�>{G�ڝ�٭~��	�z��nl��E��$�B�bH�d����E��4�C�(|�OC �IՀ���~��i1>STx��}~=��å���)�9�dW���,�9��>�P�x��6;��X�k+�7p��Ŵ�����N�L���_�o{�N�z+mgmѱ�е��o��?�wYdcV8��c6�P�|��wYFh���"qq
���ĢVĩ���~���Ƴ��_-���������I5&m�:�YG����;J�{�j74�*"�%�.��J��q��[��u�W�-��jHʹ�H�q�B�h����P����]Q����a��ln!��"���0���!�$�F�.�^���l��=5o4��`H�3�V�M���h��X��:��<uƝ�~p����Rz�
�7G>V�Y+ד�gzPTF�_���A{&��NUP˟L�����r�9.��H�{���g���{an6&��lې�|�^D� �@m� 
���s���a�z�A�L�����y��KǺ��o�3�`I!~���a���U�eH|Z����Q��6�V��Cn�6��M�<<:�;GN�?Y�o�l�]�b�OR�\й���<��s
�Qc#�k��Lv!�����Ca��J�4ǅ��Hv��V����~-)��K�/[:�FF4m�t��1�����0%k��TΑJ/��,�[_+�6-����깦EI�K!���ķ����+K�X�t��j��2�,����c�^.���y�~9�BJ��o�4���8KaY���08�&���K���/<Ͷ���{�a�|-�;	&�N�����JbFN�Xh(0!J=�̦�U�yc�w�̕�����Yh��t�ja2��<S�v������.�q6��G-ccR8�s�l�!U����*���aGa�5��Ur8Υ�����*�g�<�ï����ۀI&L\e���^��%�Y��j�J�d�Bp~#��&�s���l{�"{�y{�Y����}7X�N��2��i`����l���~�aRy/z�(�O(s�L0��Fx�GP�@����q�e�v��"�G�4��~��r�R��Ǩ)9eM�w���7w~��7ՠ����3�6�-�����zr\��3t�!:ä�Bk�I�4����3�.'?�@6f��(�C3����]��)�M�`�J8|!O�j�5�T��"�%}?����hI�K�yb�R|�����C��)C���?��l�g����6�0��ٲ�~y�8��`)��a`w��x+��J?�fsn����H���?��pI��&�4�XH�."��I�$S���y�G��8��nU�&�W8}H���þW�ur�����J��VU�[;�ǽOfFddDPZ�I7�,��m��9�h�����#|��"�4%#�VV�a�������=���mkWT�Ҿ:UM�e���6����o{��j,j�7��έn��T�8|g������/���W��L^!��&����A��k����A�6��(�l�.��[�����������}_{#D*��s�TBC��g�Y����A�o�NvI�j����}'u�4_��j�Mk�;`"u>�SL9�P��M��5��n͖���_U�L}n��>�E�j!��⸈� ���=B�,l"�� ^}�ǲ\2@�0��
p	��n���
3���럠�ユu��'������R�������`T��M��˱�����fz�׋�LaЁ�'s[�/kL�1-v/��v��F�iO�k�~��tpLx:�kH9�I/�G�2��\�P�dH��J�a�=�I������k�nI��Ϟ�[����'�&�5)Ÿ%^�Fʌ��K/���ª�q�7�s�x���Á��e��ʜT���z�Ө`r��^��٬���7R���_j�HC��s0��l^!��&���ؠa/�aE`4�b`x�q��`��筣�}[2��b#;��Ⱥ�W���zx S�4�qS�4)k<�&4g�ӄ��J��xjն,�י����CVZ�ey�{�y�H3�	�Lil*�
���zO]�ͥ)Og�E�n\�#3:��̲��3�߄�"@L�+E�lp��#!� �}-Q��F��z�ҹ� ��d��s#O�y��Ρ���39-"C酂�⻫4�V;m�&ͪ6~[�_f�zۥ��{^67���>��|�b��R���>_?��|��.�����q��-��>I�]!��a��A2,�14�WB 8؈$���b*��W���n=
�8�h������#XR��1�
L��Bk�#C����o�eV7�x���=�� �N(ל�=�[����̉lӋ�V��D{�z[
�n���j+"���Ů�
�\�l~!5�"������X�F�`(�5!|4��/Z1P����3}f\�
;��Zx�3�����N���V�bfRWh(šp���n�Y��ʹ�-��_˺�:W�Xk�j��eZ�P杍1;Hg�v�z�+:�w&�o�
ī#r0��M6��|K��:�a�	^D	�wT��a�k�Kѷ����(�N1���`[@�U�=����NJ35zR��/�{9od(3|^J �:�v����Dv+����]k!�um>�6]%��H��v�1���q
����ުjg�Z�i��v���2b���f���7�E�	�8�I
M���pލ!�V���qP���G�/ �f��}��j;FʋI��<q��Nb�TT'Þ�0��Չ,�O(�$�w��&E�I�ǓL����jy����A���U����j+�%s?��Ƞ���#n8��D������>�!#$
5Yf�)�7�E$	�
%I�	
�y�$�T�-� |����lGw]%�L`*�(��*�&�74�ؤO�7�oĝ��,/'���`�2�f]Zv6�&�:�/��o�ʵ��3���oz�W��k�7�Sq*���䨃ب���Q���_D���fR�o	Q'@�0=
�?Ű(
^�V'��E�K��������~Ξ"i�m�aA�o��� �{�t <nK�cf�;0�^(�2ǃ�X3vsu��Eo]Y����d+\p �R�;�޼�C��v	�!j��atc0ɬ��&_�R��*4������ѿK0 S(ѷ�:��$	_�|2�eq"��3�����R�6�����۳�}�{x�RIٱ!SY�)k<-;4gef���r&�w���W�kM]��R-�Owz�e�@ۻ+��qk��I��4Z;U���ա��Q��.Qa�	���M1�
�\�!@�:��c(NAw" � 3���ඞ��U���~](3"D)h����%��rc?�M%    �&���К�Jo\�q}�'{`ɵ���R��=�B�W��y_X�!��1�Eyc��.���EM��G�==s�6K�w`C�6��$C
��v!4uð`He�;��F��j��W�#�_��g�ptYU�����HQ�Zx�L}�#��>Y/ă>�YQ��R�a�tI�w�Ku�D����KzEx򵼿��*�,�'w��NsiwZCz�[p�i��.�%�-�%���rLE�%"Z`:��p��7�Et	�	�K68?'1ޑ!��%��^q&���#�n]0E:Y=Ǔ��i�0���4��kV�b���v��t�F[��n���b���\-����7���2���'���@��ɰI-n]��ں��I���O��}�0-Yrȅ���"h�F��ǀ?��hˢ�Lņy��@^�3N�~���BP�Ky��vRb���r�<��^(�YIdz�s���:���Hm���l��A|aQ���|wn�;4�Q�>�5ٓt��.�M���d~�X�@�;��Y��S٬B*�Mo�4P<��(��(0�SG �)�N��_�-7�7%+G�N_�J�.x?��ϱ��K�b�{3�����0�nM��.��i��7{��za�Z�(t��/eL��ճ����c�*�ꕵ�gFڴ���4�S�ҳ�E��y
��hg�
)�7�E��4
����h
���B��O����]�ELE�(�YC�}"�5I��M
1>rR�ikL��9C����R#[�������l�q���j�Z�T�l��e����!=h�ie�Y���͉nq��Z�#���"�Fd@9��LC�������R7�ax�F��F�@��X�\��*j�1V��~��]�_��c&��a����B��b8�%٢��T�W�@h5䪺�FM(_#����-���<dcQo�T��	�Y������ל`x�����7/f���7�E��
���$��?(�`3��V�;4Q�^�V��|�tH*F�,��Yw���;�����9m��xt�.76���{��n�By�w�e�>���]E;W.��ٜ�m�酏�rS�H[i��O�)R?$��)8�OHͽ�-�9�fp��*ő�Ӏ?,��aL����V��D���/�=�2�6�\R{�A��Kc
�
��>Ppu�AT;>�ќ15=,�E�˭I�b���u*s��1�R#�b��;l��7��_s۫�g'��""8�i��C0��L!@�,�/��i���Bh��REl�ap��k:����ppk���������İ��0Þ�N��5!F��'J��Qc9B�*qE���vo5�ю/��QuweZT�:6�&�t���v�N-w#۞�7yY���*��̆��(L�l�!����"����B���4��w�0a��TD�R�f�[��d��|uOBXZ�c���0&�d�L!����H|e=\j^���D���G�ŵ�COچ����PL�>PM�]R묇}V�Wo�s���_��(�(�$ 澫0�aH��.��`e� e
%1`'Y��64��p4u�Y<;�_��x������r�-�?����P�9F��$�Rg')k��$0g��K�0(Q�����l��My�]�D<�LO+�U��]p#���׆���k�6_tIK���;���~�_�F-p�q�A\��!J����.�M�t��3���G/J,hϛL��a��%M1ea��N�t���s~ S[��QS[Ƥ1�e�Y[��y���2�kLk֞��|F7��̯eVŰ�j���`��}򩺼��[����임�f�ܭ|�4��H`!lr�T��"*h�!aT���ևF��S$�6SO9j��7����3�V��F�Ȥc�&e�2�/�D�!>,�����W�ݍ��v�c��1��;[�+i(�EU]�=�tm�r����nNk�����X�f�Q�F<��љ$C
��v!4�A�)�Y��˒�i�b(��g�(��f��W^�#��[��J�0>fR�ikL��9C����Ke�-�]G2[��C+3�G������K���}yԟ6�#ޫ3ޒ�6�d1���u�5��[�I�:<cG4�����R�o����1fB��t��tHhꆟ&:`jj���v���-忠���@�%}aS�bb�Լ�a�O��Y3ch(ŐP� �[Y���9ި����unB�5���|���t���-��P�������$�4���W�
~�		��!R�/�h���C
��3����eSղ����-���� z�~�z���J�1))���2�<.�!p��ݖ�9^&��+,�h\�-�Q��W�ue�u�C�������a1����!���CD�����a�o��E���{�[DyAJL^�qP^�� M5�1�o���mI��<��{���@�i�9�A|`�L��a�9�O%�g��a)} �$���Z[��+�u1�-'�I��|�8�wִ��e7����� �]O�10*5�h�ؾm�����"#F0��bݐ�|�^D� M�4"#� �R�u��T�3K��Ǝ튒d�����&F7�Vv�}��J��7���4�Ӿ�5+�<.}��*2�0w`����#�Tug�ʻu�Nv�v!����-V�A��/����6�nsI���0��^�r�!q֒C1�?��]�!���A�F�8�CL�Ap�"��F��E� ���8��}V��M|�v�o���M;Щ�/|R�Y?#�̼w�%ݟ/e��e+���.�S�(�|p5j�ݧV-���=�����;���{����3P�w�5�5Ĺ3nNU���Hْ�+���!@����"bh���GE������ Dҫ/�%j���4��|nP��`f��N�4��\���)�&e��3�9˟�,�7J�㱤�����o%ēw]Ǽ�en�`סin���T"����HC��%B��TT�]���w1�����҈���9LC��My54T�DX������bQ.�+Q�D+̝Y��n������I��0��s����&&�Ȝ97F��	���T�Kv���8�� K�?m���|3Y��>�:�,�]�{��C��)���jk�+�9�su��a@����R�o���0h���̊�R`��C�"�0F�j�V�X8��γc��X��`R+wLP��MQ���C�ȞuHYJH��|c�wIw����4U���j��4H���W��t[ܘ#��	��z��3V��زm�=�{6z�&��Uאz|�^D�LXWF�&P���Ea���=�وN��M=�Pܨ�bЄ�N K*1��\�؀)�&e�;5�9˯�,�7J��+�m�Ӯ�ۛMm���#×���(�h��-���|}{]�j1^46D�bQ��L��_bѸQa@�:g3��7�ET�`�B�eY��!��EP"8�L�Φx����w�x��,�_�=�Ժ�+�&�,��80e-����%9Y�듃��vw�n���̞G���������Տ�=۶͊|j�ڕe��la��_�k��7�ôϡJr���.��3�T���������"�N^�[�;�(�i�Q���v���Sy�!$�6�.�5�%�f�����y���f,g�n�����$i��EmݮejX��6j�/�ŰslaN�`E����,��>�`'i�ʏp9w��z��h���{\D{��	$	����,B�,�����e]��)��c�����sMj�sؤ��xym9��6x\�����:H�xJV=k���j�k�u-��l�bT��і��(���|!1�%|��*UƲ�c~�ö��^� LQ�z!%�湈��a"�$��b?4	g���d
N��8UG<[��W�Q�J�_����3偤���=����BB	�z�{KI$�#Mmʑ���J-��]z��}rGᛕ��/#7��U�/]Y`;�Ը��ɚ^!<�0�`�$C
��v�L�vP,�2Y�w��(��-K�����ϳ�XU��qs�#��(al�T�0e�G	#sV�0���@(1Ҳ;��7�6���Ahٟ�e��j��t�W[���`z�^g;8F{�3D��uO�֥FU&��)R��9"���C�����"jh��9z�p��(���,    �>Ղ��[�3��YQD�Sⷍav��ǐ���)��lY�����i�92�o���N��<�i���|��F���g�����&��[U���-�߫�������^����W�@�1g�
��7�E���!��H��Jr��ZB{M�����)i�-�c2"�_�Ć����&���t�2t<.�p%���Lt=r4���v�B�/�ؾ���C԰$�2����k�F�K�tr0���k&���EΔ�o��ɁͦJv���.�MÔv�(�P(�1�`,XܓS�R7w�����kئ����]�R58���b^���'Ř�F�~��a>M�.������-^�
EG��6�ʵ�鎅�QSE�6>�0d��o�d��٨!�	��֌�#�t��"�P���PI���C
���"h*Bd�0�C!D�A��!�E?�A39[��se��t��DG�϶�߫��IJ5�%Ś�N�2��W'0�Rh(�6��iW��:Ɲ���]����P�.���p��:�;ث���O�7ԩ��QEi".LiϨ�|��x���gJR�oM�+@Å�i0m�����T��Xs����{�3Q,�9�ӯI�!(�ʏ�bL��eH[���Jy�^��o&����O���9*�Pv+��ؕ��ڧ�Nhc5�#t�vØ]�����]��pr�O�V
�"��x��lV!������H.��Q��,J��ʣI�ēI�ݳ�+��T��k܅��R�6I�L�n'�Nepg��������8J��t��So�#f^u?��+u��lrG�U�}�C˸�:�4N�ֆ�얬���i��_�埴��"�h����9�.���%@SP;L�a(��h������-���V��`*4�����ێ}���w�y���־A4v�)�s䔓�4���К�鄆��An��Fmٺk[/�̾��e�9�����p�]g�JC��5������{5�j�}̯�d�zGL�0���i����"Rh�R���ɓ�R��0���C]��������g3�G�ͷ�9*u�3u���&�?����Rz��ht�#m�O�!��^W�I�%_Yb�]܌��!�y�L��M]��Z�S�3-���t��@c��0<sH���"Bh�`��s�U$��`8�n�7�M%�h��~���o��	�I%~��a�o134>/�Ap
D¿��|��K�Ͳ�)͗�Omoԭ~;2�x[����*�t���w�[�BL���_�Ͽ�gs!LY�va��g>>#5R$�q}� |4�!��Ɔ��ŭ�i����D�u�Ο���J�J����z!Q���FV
��V�@�e��׊y��D�p����{W-��F�m�wL\����+Bל��?�.�����j��P��]������ni9tCJ��{I4�i�
�8�l`3r�mGVL3�󤉮!>����η�	L��%N%�e���a�Y	b���	���F:�5�����;}^���LU��i��K����Z�k���=���~l7��p%m.���;F.���]ߐ�|_D�$��0W��+��mX�G�X@�쉎�7���M+�&Zĭ����{��
㖘�S���ǥJvR}W���Q%O��,��j�ײ�8:��&jc����\�������I�L[6g�6��^�;*��2\��3PىٔB���m�4�Ҕb��8>�>~`�P�m;���][��g�FL��	@I��FL*/e���a����Rz��f>�#�S��Kjs[����Mvޫ�w���P_��<m�����2<հ˨F��|���n�g�)��E48`a�X%��j�
�Щ����փ%��Ύd]"Ñ�H��K*OPz������D��9���'��j�q���;,��ݜ�x���˕�~Òǭ@.��x��(����s�e�Y!g�#��񨑟q(�t@]'��R�oҋ��&Q�����ࣈ��4N`�c��b�v�ak�rЭ�j|t�G��WUFȤ&'%�a�)�iϐ��TzC�Rh�8�)�<��]{�kӺ�g��Z�*�����=9]�Og�<��GKzv�����,�WJ�ߓŸ�j��dJ������M20'}F14J�7w-�'�$o�r�ݿ�mL]پ�����z��Tdb�"3̉*%�=C����	��!#�~]�U�ww�|�kΝ��Q��]��[�A['��T�8��W�aιA��������F��\C��Mz=4	Uܓ#Q�$��E���C��Ʀnڇ��h�v_�F��X����K_ J��|��:_I��+k�	��Tz�ulu8��3�#���3˭��r�SEf�+���?;�r����'T�[gܭV���y�Bs!%�L�!E�f��:��!B�ah�E�����F��Oڷ�A$�u���~tF3����צ�/`*�61p*�6�Ϩ_�ʩ�J�����/��9�(ݝt����/�n�3�U��j�[�$��˅S'�H����U��f��W��B$�Z�����tCJ��{I4T�4�2IcA.hOC��S�����俑�!	�܊������q�I��?�KE��xp;4fE�CC酂���O|׼�X��ąyn�1T(+�����-����]��U�j�n�F'VpWG��!�o)p����|��M��B��Mq�4�A��U���ؠ=:��X���K����8�e��O\k��v2J���G�cc���������J8���[��Y�p�6�3 �eV���������Y��{��)��_ݩ'������&����%๐f���R�oҋ��Y���cp�%I�s?A��H�q�{�G��g/�w�Ǵs���Mj1m����%���p�񌫌�M�5��k��������]��q��k]�ւ�����4���u����l����|E���\D��L����I��J�,	�D�~�,EBW=�)�K慵����@s��{���U�!�@��x�0N���Nh)�pP
�}WVn�[_�)��^Z�k��>Mw��IN���n:�鲿h�ǻ{"��N�o~�?p.p�	�jm��.��4Q @S0��h��9�$~�)��@2��!�t��m0Ɩg�p4�CVfX*��S����S��Y/dQ̭�4��p(}V*u�2r�ڭ\[=|�S΢P�o��_�;�����:��1��3��f��Ǧ7��Fv����{�.���HW��R�o�'@�Ǿ��qG1�2�h`��q��D��Z�(���{��h7���G�v�R)b�SbqS<AL�I��^�d�����^��O�	2����/�h�^nO-�"�hwp�Q�W���| wVˍsZ.Df������"���k.���y��ޛ�"��à�G28K��߂#����>��d���8��P��c�&@<����Щ�v��l[����ǥ\�S�RF8JMye�Vw����Z���l@�-1�Wj�N������f��ː�*����w�7��B 902̤R�o���0p�aJ��Cb8G����#M��7-ݾ���WK��A1%�!��7���n19pjǘ�B|��x#k��0�>�P�<0�9�l�=����k���m����t�7����:=NW�z���lO���p�+��&�Z��NDL'��!u�&��.��,�q����e�h`2U@g���_P�F����爖�*~��ؤ.c'5�2��89z���q��w���T�n���R�_�=�//6˵�_���
z\�κ�ê��E������uGG'�?���~���h����1��d�!@S8D���`�6-���?Ju���3#�y�"+&�o���l��x)��,q�Y�|�鯙[�f����]�BW>n�+yׄ�q`U��n��mW�Gܲ"�J�_1�8�5�6���ىE����d
%�Of]��a:�	��С|������,t� �M=�;�gֻ��+���d�N*09xR�Y���2�>/Łp�m�uq�Zg��^���B�lj���2��ޱ,�]���u�L���h    ��ԐmuI��~~UE�@�XD
��fR�oꋨ<�H�����I�h��d4g!u�ć�57�9jฤ�S!�,w96dJ�Ic\��5K���G�����\Y���U�zg��*5���Q�uל�h�/�q�{���6'��qU�Se�ś�p1�_����Q�!�`H��."B�1"	'��9���E�h '�fyS����b��ǵ>��������v���{���iJ�I�`R��ɹ��51y �t%��*w���ȩ�5�G��ki�sV�vs��_�Uծ�cG^��v�����p��s�>�TH��-�; ���N8͢��V�'?�ReGD�����ٱ��Yʇ7�=UKJ�sȤ���x������y��U���[��h���vk���r������^���K4�7��*w�䌼N�1b��b�����\X��~���R~o���/�]SO�&(����
�h���g�(E�t�)���4���g�T ��n3?P���!SG'Ic��$�f���K(�n��3��8E<n���H�l�r_(Δ�M��M����]ʪ7��;uj�w$��y.�F��PD�D�M��|�\D��]*bM0F?�V�c	65���l�M�sP�!�� \� �Zw߃��ݸ)�����7x^za�dw�F���f#�r����j�@�e����ʚa�1f�֐=����4x|�����j�'{|l����B�p���|��B���m�4�A��3�,�;�P$�$���i ���OSW�6����o�t*#��=dF&Cܘ�d ��D`(�ap�E��p7���*���.�^J�/��=
ݛA�lqv��#���n}5G�][��|�W-p%����������'ѿk0D0WQh���Ag]��r,��`�T,�w>j����x���k�M1#�5��F��?�LJ0i�)04f0|^z��z=6�ٮ�Z���lS��ӶԲHk��d��n�>Sb��m,�<¸�ܺ�ؾ]����z��E_?�қ�-���$�@���"	����
�h$��T�fW�����A���ݒ�c��{у��_��hj��Z�S��b��V��P��A����T�l޶y=��0�F�rkONn�R�ǓK�o���;��������B�p;�ȸ@3).₆	�d)�7�E������P%C�|��82]�k#J��D�a��XRף�qV�ܬ��^{���e�=&���|XJ�P�tC�Ɲ$��V��H���ń��mM���I�T}{����r^M��s��&��H5+�u}U�Ϫ1
\����)'��;�6�(�M�&(��"��@�ɀ?2�P������*�^�Va"�*�~��O�M��th�
N�����U]m�S�/$���-B��vm�|�z��X�'�B���v���;6���E�8���Z|�"]�21}�4̩]6���{\D{��0��i
��c��~����ӥl��
-GQ,�6�� ��`~<(��uN��_���'�eO��+�Vv�!��I�ͻb3[��ַ
7����P(7�Q��Ak����8��ͩ�ޏYÉ����}rv��� F��a�LU��!��f��0� ��I�!q���^(�b*u��zM�(��?C7��ݷ����?�Ly�Ic܃�,�<.}���]GV�jH���Z�xl�Ky���~�4�q�u�7;��kb��.�.�[#�,����"F����.�j�D0�r؅R�'Ϳ+0@(��@���c��*�H���ul��R�C�tn'9#F��cC&�2�Ke��F�����z;ZF8u�T��M_��ky$������X��C�Yu�K�θn�U�r���Ь柠I�) Q�zK9�Bj�Mt4\&�5|�4H��&3��E���?���X��gx�B�\R��a�J�0�X��	%GV��(E66u��ԅQ�g:�kyfz���oo�n���|0�}�AG���ߑ�Q&��qL��=��b�0"s�����"zhj�H�OHs,�PH��-�M���j���(�}�t3��@2��R�ǀ��0aKt�Y�ah(�Pp+r�������5ݫ��ٻ�����w��Kt���t<������ĸ�����#�f���ȯ�|*�?�YH��(."> fazY�A#�	�PMb`�M5/�������޳5d�]���<u������7]ß�d�5���<\�݉!�S�,
��7����J	���qj�\��9��!i���/�����䭆tO�6�������[
�z��P+v�  5�VB�4�B͐,
�$����p(��4�͠��ᠸ���r4m��=� �
wǆL��S�x�;2gŻ#K������Ʀ��]��+�V�g���^pD��wu��U��5�B3��^ַ;b���N����\�
@�5UfR)��ET���]�T�	���*�H�I��n�f 	�Q�����[�� ��l?�J��?�X�93�?x\z��u�^s�	���ٌNwi��B�Zi��V�Qq��
'��Uݸڔ5����^�^=����-�6�m�P	��TB���i�45�1��#��A9�j麰�����y���q�����?V����al�t�0eN�����TzC��"T܎����i��:�i_�i[��
v.��?&LE�ftuz�q��}�=�q��;���#>�n�e�%�O�d�f�n�20�7�Ke��\�2J�/�ƃ�i�l�vx��e)������Mܖ��r�7�g^O�Cˡ���U\r�CCʪ�7W^���=}I��'���t��r:mc�3�f������e�"�JD�Փl~!5�&��q
2t!4�	ކ/�M#$
FK�?lgzϋ��oy��f�NU��8�{��ns�!k���(O�Wd�as�^�X�#j)v:]��oj#W�ͩә3��Y�&���ldjNk��^Ӛ:����.���墯��p��z{�ZDo M´�v�����7�jN]u�/`C�����+��4]ى���H���=`���ؠ���5q�.0g(����Ν-͌���ѭ��=�&9�L��9k�(��8��k���v���S�m�Y:�egݪf~��"A���&R�o���
���� ��%��\�~
��?�D����]I3^5�$x ���n%��Dؤc'��2ƤX3�<.}��l��l���	UTh�����<�xsr;8�e�WD��e��ѱ��������ܪ�&��>���V+�À��l�!u�&���$�t|'���_`�KI�$�tmKq��x���}kf�R��{��'7Ž�� L�������[۲���yo�h0���"j�~7�w�v_�K���Yk�W�����Q�s��'�pjT���KQ �&���0�UH��-�<��N�q���}�AP��Ɍ�z�~��=�u�	���XA�����6)��a�L���s���!P���I��9-zښ����b�y-3k�k}�P�hG�u'*Z;`�M{8�;�r��inF�����z]��S���0�O�����'ɿ�/Dc,�?G,�{��p� 8�Q�N�0���_��I��$��={����{L��sФ�����"c�#C酂� >�Ξ+5d�lc�8���Pv�aC9��箰���O%�lc2Q�͚��P�ig�m����9H� UF3�^H	�y."A��7�I�e10�$��D��ږ�+K�_}y�D����%���~>�'��9vR�I[L��1C����B��ܦ�%�p��iMw7"�|�/��^����-5�G�/g�ah/��ua���t��2�q
M��60�eH%��.�D�f����ຓ�;� Axr2��.D8`��Y?E�۝����6��
	���``ϊ
�K1� fǪ�˭H��*/w^^�;��@�'{�tiy"IT)�Ҳ����V�f����1�.�W �0⃄�3Ɇ��"�h
��#����p�A���l28����Ya�^=�5�����>����Op�.9z��.���}|gŻ@���{G�vwW������    T(���$z̡i�uQ@Lj����)_����5s�+���fJ�P�03I���"�h�Ѿ3���n |yW&�1 ��T1\;������H6�m�?�_�z�J?�L��D 1g�����e~~l��>Cr�q�5EyW���Sr�I}�GͶ��]fUA;�pyr�Y�Ɯ�{t�%��H�ш��.�cH��.�C��H��A)����	�٠� �jG�S|������[�|�;(��Qb8���7�AS��5�y���8S酄�!^GT�1�G��k+�n����*�U��k�u��[����TgNQ���իx��tt�wc���DLPy494CI��ߥ��.�RdQ��p��vcXz�'���Y����X�X���r襊(=pI1&�M�1�o[�3�J�@(5N��X�Ϯ�o�ۗ�Zō�/�[k�N�>�kk!jgk��[�.�T��o���uf��k�:"�oTӐj|S^D� ��D�<#q�_hW�EgRG��}�{[��I��z��ӥTE����";�aS��7�Q�蕬0Od)��P�t5���{��U�;��:�Y(3��+�ˍ�&S�:�.ӑ*�Ğ _�Juk�VC�����]�;������R�o���Y�B_F��R����<�dO� �fg��G�-��z���Cf5��IQf��*�2$���^�]�����;S~�/�+�֚c��L�vN��쵫#�ꯎ�͝hb9�t͎��WöO��� �Uh���q�sȆ��"��a�=0��Ib���X�&0�I�|�o ���R����h��I��[u�ݤtj�|���!c��̘���� Wu��#oT:�倾���!�e��;��؞��`z#�a�f�Wy�k�c�:4��~nu�߱���{�ӗb!��f��� �b ���I�8�Ò,��3�4�1m�S����٦�y[����w�mE���C�H*1�$5��N������l�� p�:��x�����4+����	�l̶�١]�i�Q�ܜ]��t�N�<�)�]����zK��V�����A\s�Q�Zߒ(�V��Y��(���C4�E�#P2���ڢ�������l&�?ђ������'� ���?�M��?-�����:%|^zB�&�J��/l�V��g[�:6��������}���~c�+��k�������Įq]k�_�
T	��}ƥɦR~o����9�֣N�$��?�p��K�eڢ�����ܜt�������#&��0Ŕ�2�<��8�d^?-�se���J/����'���Z��S�ך����Mƚ27/Ջ�`�Ɣ��qm���F�$��'!�trX�R���/�0F�:F��*3�w�S��Ńc[}�`(��t�r�ͳ����š��u�c��z�����И�����9襍��֕���H�������ۄЫC{��F-��V=t�n{S�ޟ�+�9ڌǌ�P�?�w"`������E4�,L/GgI0�Íf!8�s�;źxz��%��eU�_�\I�d���;�Od:S,6p:[,eNd�]2�>/�pp�'^�#��C&dg��2�*���q��	���L�G��[��;c}�����Eek�gJ��$�l0�s��T��"rhj-&P.�����e�H�IeJ4��ْ���虊�rY�a��������&����;҇�-F��J��,!�ш��쾦���2����1.�*�Օ�D_����r�qc�Q�ʘݗ���hO��|Z�ma�AAH1�fH)��."E��[�	��0�M�{%B�,�򡧒v�M��ض���<E�,�+|!2����I-���Ks����	�F�k�^Ӹ�����	Q;L�/o:Ve�*l�־�V�vQE��f��sw�v�����m�j�[E�)�ƀ(9�iH5�)/�F�f9��6A�`���M ��,%�$��(�v�x�9��U�HR��!�R̲���x!C�K�
�������|J ����ܐ��e7�]ި��N2��n.+�G:���eH��;�?��U��g��iK6Ӑj|S^D� ��ԋe��E��p,����3�����1�j���b Lj�9`R���c��݁����p���F]�qS�$��T��5�e������qP�tQ[��ӕ�}u�ikt��tg7�wR�m�����X��%��ޤ�@0KC���`a���P���A��t!��Yq���nW�"���E��#G�Tl06b*>��&+!�(ad)��p��@t��nP�=ߩcB�7�r����+���{y8���|xЍ�c���j+�>�����͗��kI}� �ǝC����Q���u��!	�ah��N�g9"u��u����`��H�y��z�*��e�1���)!@`˔x^za�����Y�j��0XS.>8Ԑ_��
ڛWV�j���x�p�'¹{���>r���n7ȡ-�#N�s����'a6�ټBj�Mp�4�}a�G�	~>�;��h$���Sm���:r.�/~:#�oɺ��Z�+�%��9fR~I[��C`��_������3/^}��6��;�֧D�'�����H���i�5�s��;�����������`�L~J��}lCr����&R�o��0h:s��!Y0?W�y~4���Hזӷ���di�O�,;h ~��U�/����1]l��Y]ʜ8��Gv����i�҃��8lIm�#o��P^afè�R_;]�)k���]9��k�y�V#o��:�?�"�d|@E��Ɇ��"�b�8L�|v
#8�
KϏ�Ph�2q��������繱T��f�����K�xt�ԳB��^�@@��d�7�N/n2�m����dz��s��*u�O��b�CL�x�߭�������_k����:L�J!e�消� ���2�P`��18S����X�.}2�v��m�<F�]�R���{��c?`�l�ؠ�d�5����r�CC�%ĕԓ����#�	��	Ԁ���m��Ih'����g�Z1βip�y9cunE`�Y�LW���Zm)$9���	�d�)�7�E��`O#D��٠f2�1{���PW�	�c��b�0��iJ�Me/��Me/�M������</�0p��>6r]�����=�2~�����A��E՗f�ڵO;v��;{nu{�:�89G���sȍ�fG�M.� ?Y�]�!X`~�Hx�C0�$��	�Dу�7��@�꼺Jf)�tn�奜��x�\�5�i�0g�Z?L�.}���|^�v�5��Mg�d�	e���ݖ�n:f�Y=R5�٠�Gx���g�wZ��e�9a�Ӡ���H�p@sd��0�
�TQ!����Kh��P!ARh��7oy��+�'��m���c|.L�
�sa�M���S.r���_�,W�e,=�p���x����h��uP�t��Ȟ/�MRp�Ã����Y�+��k�6^}�����񗹄�W���"s�x@
L���!U����*��0�G� �(Ja��	����Vc�e��k������߯�=���B�kC�Sk2^H�c
��L�	-�J�m)nn�S�isp>��䁻�ysq����F
j]:�ɬ�Uk�E'���*��Z[QY�?���Dg�y@�4gs���Ed�GAɒ[Z���R0�&)<ULyhc��-I4^���Q����.��ĸ)If��T�%�0�>�p�7��k������"VV#]�s{>�V���oIK�W'���"�v���s�>�΂����_ϒC�F8(Ef����E	����2d����!�q� N�옊�7�͝kGeH��Kܚ�ƣ��()���I)����L�9C�����U�g�(s��v���j�\-�ۅ��Z��f�����16�����Ho�{r� ����~�02�p8
�3%�aH��."��#Be�0Xp����Vk�����VLU��ö�Q�ǧ�:2�V̟&���������Ko���]~��v�:�Gf�t�CC-#��[tmFC]~���Ψ��J�lI��رg��y�
ı��^6���{1\D{ ̱0y�<��Hh��    ��(�T<�UEʋ�eKA��z���eq��׈��%�XLYI��q酀Rݚ3��U�7�tg�h�xc�)|y8�t���*Լ���۩3��3����ʞ�-?�S��?j�9O�u�	�dS
��nW]�	�(6Cg�`����p�ਤ��e�}e��z�GQ���5���)�96r�gNY�.sh�r�CC�%��� M��uk�3��~Q+|��_n���X����a��(ֶݼc��SQ��۾��{ˇ�Ĉ&���4�ߔQ#4x����9E��g*8B7>�8�ae
y�8[2p;_n�t���Y��1��铽���ӽ�9q]#1|^��4�����]M/�3��/����eTy
VZ����%�Gw3�r�JO�\;C���IO��k���r^�w@	���R�o�h������(	L��+8B��?��? ���U��#������n�*�D��c&��a��qx�3��4��P(16)��;Z�Ɍ�imx���̗�Ԕ!0v�@�V����yu�\��^o8�z����*��5W��[D���M4�ߌ#@�L]D�D1��0xG�b�d�!on�^��}M�@{���l493��2�1�F�L�z�8JN-Ё���������3��7{^C����H(���z�`�ӎ�s�5�>��7���Q5�4��^�U�i��V� �¤f)�7�E�Ǆ��a�GSA�(����I�DG
�wKE#X���R����m����'�ذ��0eNL��=s.-�$�\��	SԛU�J��%7ǮeJ���W�G������c[�[��
��á=;k�2n�h�Rha�`a��l�!��漈g�f�Up6	+GA�U?U�Ft�Y����H0���51�%�4�Ŵ5qq>4gH�a)��PJ����xs���ޟ�=^�<_�pu��@u�j�R�~�/'�������l�T����2���	�_�� �#"(�U9�e(%~���C4K�(�rgq%!��>?F1\�4gH�с;۲m��?�_D�����iy �r���dڞ�d�B�&#S��W����81���u[3۹wG(Of�t����ѭ�L�P�G�hr4�Uj���uxT��#1�q9�ET���,�ٌC��M}Ub�b0y��2J����(���4*�8��U�6��EzOtT%݊/u��	Nj3�$���N�_�R�B#C)��R)���5�+�{�=�i�Y����r�ަ�j:��&͈�*�غzk��KS�t�nEo���R����$��/[�*}I��H�b`��Mq��~)4L�)��m��Rt�gj��FJ�_�\���=d��/n��������Pz��b;�dv�nG��u$��Ң)օ2�p/�9 ��j8v��n����۞{8����j#f~qN����!������G�fR|o����1&��qXf��=��'H��D$죦8K0�<�~�.�|m��RKvb�Ԓ�aO�A|���j���'��v�}�����\���q��.;Mgy�ju�U�3�7�ϔKˬ/�ݑ&焦��+rSQ��h�@�'d�F���L�!%�⽈"�a!:�����i��j��d$w��Ś���t�D���y� ����x)�:nJ�53�5��K/�B�ސխ��4�K~�g��E�*�"�}��_'k��&��R�6���l���k���k��_��ֹ	Y�x�k9�B
�Mo��?kױ�*�loŁ��a�c�9O|H��`��ӈ�Jڶ<gr�}(��k���
@�6a�Gb$A0PC��~�b�,#X*�,��mE��'�U�?����奞�a�z������P�����RL��|��V���o,���]/*�\ʴ�S��Q{|X�f��a$�]-�[�����u�������0A,��"ē�7$'���$a")<���$�4A)�c�tG�w���t[���1����˟f���V�DL�b,�d�OK�*p�`4�W���?2�G�aO+Rؽ}�]&���5��`��m,h�v�UOM~:��H��@���w�"����w�0\(~��;���B�ɲ(G�$�28td�D��I5��*`��E��0'1����aN���K����Y�"�o'��"���������ln����/�k��l����;��+�n,�ڬr#Z�?_n����w�Z�s�8	F��������{o��ph� �=ci4l����N�~X���ڻ�\x�f_��+LC�T��m4����!!�+{���V�bJ[d�u��VueF�;h5����Z�㒟�[2zk0+7�kۿ+5��_���� :��+^����ss+r��d��"����f�dp��g?����Z��p F̔ϺQ��.���F7�bz��M/�)qb!��Ka$*�U����IF��\�cƩV5a3)_�M��!���w�u��],*ִ���puz��U�>�,��+�T��!4D�}ؐ�|�^��@����cqf���O�^:)l�:8��|�ߤ<��i���(�+5�[��r:5,n<���'�?d�KqE8ehJKUD��H�B�L�<)��[s��%����Z�7�bcbZ����hy@zXC3Vr'���/P���@Ds�d��"�߆��c1�
s7X�V�8J�Ӷu5p�]��L��	IH��8��N`�Sy�	Y<s�!���~J�����mz�V����GMZj�sD���3*7������>1K�v�1�����2�?#ۥïӄ$ZH��1.B?�Ma0�4��a�F�@?��Y6����k��\<CO��&~ۢ_�I��&y��&�Jͬ�9|\�iA1Q9!Wmz���j.�U�zkZ|YnVf�H��Q�<����
}�T��fh�;���W����W��+�B��2$�pa"���@0��1�b�����j�0]綫+���F�7+��
���O~*�����9!L��nf_���҇�y��g���هŐ=�5c0)�-�Mᗾ�`��q�1��	i�T�r�mb�M��Y�K(�c>��# X�|�t��	��|h��Z�J�c� ����4���ߜ̍�e�ق���9@%� ���^*16&����q���mG�)�I'�����m�?����H=ׅ�`���I�άzw�5K�,LY���'�W���?�؁����e"
ɺ7�EX��,�Na(���>�\jz��8��H���7�����n��&S��qQ��Ȳ.����[�{ѳH�fR�V�	��=ל��8�=��n�p���u�O-�#�ժ�]�3�8�?Z���?>=��\�e�
ɽ7�E��9���I�$M0��Bq,�Z�e�ʮ�	����w+N��^�<�R��T|&-Nt$�Yљ����7���l�S�nn��+Q��ĝK�7$�҉�֬�O���^TSn����j7g��*�X���H㊐�
f�I�7�E���z}*R����Є�B�p�d�b�{�n4UtӼ�BQ��� ���I2Ƭ&��&�i�KZP,죌���ެyGT���oO�N�z���E�Ee{��(���C�:�[��<p�>�׍J����C`�-� ��7�EXȄCN�D����''� ��H[�>p<v=]����e�z��y�$��i/I��,ޅ�!̠_$(����W���R�G>��μv���R���&ZK�܂΄:9"�����l���0k8��1fP�,��W�3v��a�-� ɾ7�E��I&H�8F���l:��ư�4�1�n�.�_(F	Yxtu/��&U�dx!�F���qY"�:gt^$(���(�w�~O���8�`�m\�c�Y�S{�Y���
�Y];:���Vo:sٜ5�7c�S��vE��Dك9�BQ���)��ơ�H<��F3���4�q�&�F��kap�Ӎ(&����'����m I��_��e�1r>_�`�SR�+Cq��l;����<͹�p?7g����L��yE��XC�>s��T��^�m5Ej�t�6NlI�~~��Q��!D0Gr����E8��Q��.��I�"9x��F�C��&ݰIۍl9��-��\��c����h͟j*`3���    ��a(�
��K�jp�o��fiM�So�=5[�Vm�KY�kO�{�i��Y�F��ƙ4歽��P�����t���+��rl"(H�-;gH.�/�E��j.�mQ0���4B�sVS#���ޭn���m�����Z��d�w�fdxŅ��P���JJ/=(
�T��*&�<ɓ�rC�Zu"�eC>T�ˠ�V.U���#9hudj��ք�m��f�'a�+��`P)���BR��s
����I���&�di��Q�)K��n J)��3��V����a�k2�:� ,�N-���S�aR_Ҭ��!(���Z�]W��f8�Ú�r��vZL�U��jX��K��`&q��q��gn]�����^O�C���v�
2GP0��98Cr�x.m*���9�Bi����,��t�o(� F�B2�Ft�D�J�� �{'�P3Iĸ�$���D�H��ŧ��V�"���Ǫq�4iVS��w)+�E� ����
��Ñ����F�xkjՠj�r��t:�t�+�7�X00�y�@C��x2m�CF���av<��J+�7��s�M��혲�r����}龕���rlb�SY6)i<�&g�ل�K�jpy^�a����v-�[�r����T-���`j�;<���|�}a�@�c�\�Bg�=]�;Μ���KE��DX00�t6Аd|#^��@��`��q,N�����,M'�)؋w������r�c VGO�NçZ*��a2\L�#.2[��K:p�E�4�W�} ��>�����e��]��AiV���Ñ���]��.Pmka��ƅ	:�sP�P9��0#Vr����'ƿ��l��(���Hೱ��Q����JU�
n��tB��)?O��ms�t��9󍌚e%;���>���y!M���+��wkm�Q%�ӎZ6��thM���"cq�]��xE��ˬy�|ft��mM`�Y��߾��K�Tl6���|s�=�6�At�eix;���0BbC$}�������:�����}����J�-��bj�N
�t$�ڢ#I�w�\����2�yy+�7eO��,Ni�7h17��U.Xk4��͜@,y��#|^��5�6�o�Q�\�w�  a�������"�,	sM�cñ(��� ��>��p�	������yQ�h:��	�D��2n9�<����)�Z���[��տ0Ë�˵��xk�Z��2��F�V굱�t�����Z�hͧ���/�*��;h=?�x�u\���n�9pCR�{Jm������C2���%#��q�`��u�1��{�%��"��ɍ�RW�q��[��8~1��g]>�OE���#�<��`��ճI�&幡�C����*'��u@+MnV�9ʭ��z�2������Q�R�z:*E'iH6�!/�F�M�0�4��y��� �ܷtC��Ѡ�h��5C%�7�d\'sD��f��F���D�4�&mu?�bs���-�/��eջM�����������vڗ�iUg�Qoe�~��/�s�JE��Kb���{�\�@x�0�#p:l�A�E�xr5�=N؍ɑ4��j)�Ԝ9�'�>�R	b�6S	bIa<A,�f%���KZP�z}�nQ��P�Z�?P����ҪiE5�:Y�����Sb�:���2��-��v~��T �A@�����Bq���9jc�5R��3|)���+�0����������j��3���jy�&�����c�<�S;|!����ӄ�!@�uJ�)�S�c�1B�?�eK:��u�޶w���~���{�/��:��Ys��/��&�
�R��!(0#r�d��"��
U���6�i���E��R��g7x'�q����YMpm��>�硕r�?,���,�<?�Y��CPziA�� ͫ�q"�k�צ���8t��ty��|�)t�+�8���د�u�f's�6�����#(P�}~���ll!�����6�I�^&k�W��ɐ��{�q��]W� ʽf���~="F�I&&l'ɘ!N����Yg�?Q�
EJ��?���0�k�\�FM�6	&���(�fkD����:k�ƁPfk�8mn�" t�[���ϋ��"�1��q���o䋐h�4L<�%���wWX��IpI�{�������5.ΫlN�zx�%�3��bJɗ3������VU�{�����y?�����K���}�_,W�,�$��&�ʢ7�V�l��U���N~A�Q 9'�ٙ��$��"$�$�2�E�%�Txg
8R�up�+�����+
�
�Չ魝�c�|���/$��od�2��poz��Tٗƈ�ivl�E�I�f�Vcz��>����x$u�:'޹���3�+E:Ҧv�t�-�OG��Pd&��|�7�6�ߝ�����#�e���2�r�RL]صA}�s��x4o��U�����u���a�6S�K\�\�,��!(�)A�o�)d��$��&W��K��<_ui������Ag�a�^۞ճ�����֞^[7�9�?4����`Z�dCI�7�E���>�8��i��	���ӀN��)�� >�i�]�Ĺ�Kd穞>7�ͧ�iyr.��̓c$*}�BQSg�ۡ��g����v�=����4^������}�X���.�G��\��@���	��?2�
Dy"d�Zg�E�O���C�#�r� Lp��������u:����`|M�z�=
aA����P3��O�I6&e񶱑0��OI�O�}'��V#��s�ٲ�����rm�=�����]#�$1������8CnTU]����A��淎��0� *e'`H��.BB�&U��Q�Cb���ɡɔ>]E���W\�_f��U�qiI&����:e=�_g�߶�dm�A)�7ho~�/��-_��4�٥|_w8A�7�V:�3�NW� �t-4h-'[�N7��0��X��v���!���@v�bP�7N�N�;6B��.�Y�/� ���+��3���,�o��V�:&a5u#�!�_����u1�'+���(9t.Toݛ�iM3�x���x����?VkJ��큯70t�P���$LْB�8����j>D��9pCR�{J��������#�����'��F��($8�)ޮ*�(H�_��x�#�=�1R�<L~��<L&���d�D�HR�T�b��ԑ~���mQ9U�8z
6j�tk�\��R�z,��UP���{��𦫀�7�%�7S�|
�e� ��7�EX	�ÛuV$M��>9$�pJF�L���]�/�*{v�����O��J�}b6S1��4�y��>A�C��.��ֆ�-Pi���N[=L�I��Oč�<s����t��ǽ�N���f)u~ 8��zi�:��dE�D0�9C��v���:D��W��_Ht�1��NU�ց�z3w|�"!pj �p�
I�}�J�/!J��e̋�?%(�U:���Y����0=n�_�4�:"w�Rc���Q;��2��ۑ��n��쮪]*8��&�Cv_���Ń�vol��h�m� h��4E�K;E�A�M5��r�]�t$㙴�ۺ�?�������P/ɿ��$S�x�K$� �SRz�AѰ%SjJΜ낖�v��А����S&���\ K�qX�OQ�=�Gk�u��v*�#C�w>Q��e�1cX�L�H��aV?��J�����q�d�d��X0-a��{�u�(��"�������C9���I&D1>d|</�t��4M��V�9gu"�g^M-_���7*��X��7ϫ�}��3[��]���^�o��zT����{5� �a�A��o��0h�0�-F�Kq�}>�q�@٤s2;�v]ArDϱ�|Y1�0�΂�����v*�6n<�J�';=yV6�CP�T���6����8�DrP�%f�c��u���sp�;�ůEG/��?���^߭�I�$��pm���{��b:Zܐ�|�^��@�����a4�QC`?0�b1�IR�c
�y���p�h޸���/RI�_�R��$��L�OKo(L�9SS��Ժd}N͂�|)o*�tE*�wu�5��H�n�wt������>�k�v�_�Z�U���    \��	I�7�EG�G$D6����1� �N\M0����n��al&l��I�}o��PI2�m,ɸ�$ƸP�A��q�W4p�#�s�]հ�@���xΗk�ޔ�P����pj���h�Å��� m���=��C�ߧ�>�8��f�	I�7�E(�	"5��1�d	�����E�I��`c�ta�s=C���s��~�������4����'�Cyv�v()}h�U ǁ-�7��u$�~k�bwR�j�q��f�X_��:NV�ٌ@H��	G�zZU	��OI���{bA�x!�@C��x2>z���8��$���^��@�w�x���m�r����b�&]���d����v����~q�	�8z%�;�D��6\1�z�,'��,�sa���&`��-�s6����A��Ic�G�M�GU�lT�,3s��D�Ć�qP���"�'~'�C��`\d�&�Oo�ɉ�WC�t0[ˢ�����?�*ꏑ�����hj���O���2)���Oi�B������j�l{j��+�)�MF�/H��F�4�m�W��%���J�y�O��*l��;�v�n~f�T`�| �ay9(C2�w&b,�%�p��)�{<<	�����Һ��S�|����mI?����n��t�_��l��
Y�LŬ�x��!�
Z?��\���-p�<�����j������G�ɸ����|i�a��mu�&�h�kv3Y�M�ݚ��Z" h��/]H�a.�@����#����!��'0NrtjT�#1�4!�ҏ�M�A�I�%5������0��N���LB>%�OU�*?⮞Y�6l���%������U�黾q�������tq�Zcb�6�b{ą6��*�.0���	�AgI��E8	�(� i(�@����IN�� ���[��D����
���b�1I<LDYAB��Ҁ"ܵ}�T���sDo��+M��p��5@jl�^�&���~p��Pw�o���A�����o�=u���	��`6���{�Z�ptث"�#�"I��ef	`)ɸ�n���;��"�����+�(�]OW-/U�tX^�I
��'���F���d��OT�iC�s���$�\����Km��t��s����gV��QQd�Y@j�O���d�A��q-�jd�z�ZCx`ds����E�	�1��i�����?9����1q �R�� ��MK����Nf�Ԅ{%�[S�lF�WJ����^����d��2\���ꯛL��c�r�i�s먖��v�j=�8��k�b��[ȼڐ�ݬ��u��<-����g�<!�`��xCr�|Nm��Cp���	G��F�M�;�K�Ug���`��U��^��R�
6>tR�K�b�uII��K$��^"I�ׇ��I����U���ޤ����ɨ�y˪t��	���t=�.z��b��l��^].�o�T�wF(@�;dCE�O���C�`Ί$����!Ј#x�X9U;�Y���9���܋6m�ꇫⷔÇR*��a0�I��1�P��	���JP���%VE�J���V�Xu��A-X��lQ$�E˪6�y����K�V�߅m0�'��u�����D��٘���d��"��s�L2888�8���#$A�dj��b�Ee�WO�%�sy#Ȉq'=�?�t'f6�I���P��	�OE(6��U��`�x�_X��LT�]MH��&��t'��{���j�����Dk�5���U����!3��d��"l$'6r�i��!��#N�N�Q,�T H��k�I`ꃏ_�n�)2~ZMQ1)�1�f11��^zp��a���JC��g�FgPuM�/��N�mmW�Z�=�rz�.��������tu�N7O.0��	QT��1$�`�!�/(������
�0GRIw�&���j����`#Ω�,��sXV�-�C5���IV��5���ͧ��Іb�ͺ�H��5�+�ص��gӊ���:��8&���å?���z*^��/�+�L����j���@4̩1}H��iP��@��in�Q�E�ı�r�bhpбw+�4_�$������J���%��R):qQ<G�!���yJJP�3��]̿���Fh,��Z��%� Qm�uZ���ә�%�Um(�6�P:͢��?��rX�/G�LX!��Ʒ��6��d�RLX����!�G (���ۼ�暑��U�7~����9���Z��ݎ#���a9�$dq�EϞ�x^z+A�P^NC�@#o�][�i���$���s��'K#��K��OMFu[7W�i���"?Y���%���w6�P,���w>�	(���@B��X6#����|$@<�����o��2�>�e�c�KE�y��=3�+�C�Ӻw��b{R�GO����T+lUZrK�[;p��%�������y��9F!ꅟ��Y �q����"����8�v���R� 1*餀S��慠k�I��"i�_�o�7O�$	cf�,L	}��4����-(�A�|�%�r��׵�t��/�e�\uN~�:���mN����V�6�_�i�Ԭ�a���'���0$_P!!P�a���#����B $��lj��y֕��}��M�%�V#�s�>&闔��G���=��:��^N��h� ����4��
�x�o-RWׇ��xF:�+S���'w޸W�J Pl�w_��~tϏ���7d#I�7�E��9&�f(� ~��A 4	��%π�c�]�q���k�$8������S1u ��MS��!�!�:>�=�[�@nH��>�
��v�/Y�|�nLl��xٱ��rj����jX�١�O��w��BL� a�Q�d��"D�,L�N`'6,k�'b��J|��aҁ`�~�c+��
¢e"�ᡗJ�y�Le��E�=3�!|\z��E�7f�9���iF�kہ��e�]7��M�L�R�"m�B_QrT[�bg�-�E�j�$T��*k�"�?=TRC6���{\�{@�e`b0LXЌ�0�GK�ih����������V���m��hj��7` ����ҟ���1����n��^��eSQ�K@���fn����0�m�g�Ӻ���d�n�u~t�*��}v�OC6���{�[�w@�ar��$X�?м#C���;��T�Կ0�,��	HZ�4��މ��^�p�)ab�C�Aç��҃+KF&��͐�<?#$�"n��9)w�=Q������5e|X��Q��?;W�IrN��tF����K�0t���q6�PT���w*�����a�G ���8M�.�W�]�Q4�ժAr���Rd]�~Ij��h�V�94qY"�&f&Є��Kn�E�Rg0:Q�f�B��V�q��7}k]��uV�v5g�㵭�뢶�S2}�xV���2�v�"�*@�F��0�Ѕ��ʁgخ�g� �aRPj�Y�.�J8�i�8b|)TΎy��25���Mr0%���?�4����2�I�8I�nk_[2TXu9�ˋ�{@[݋5�ɂ��c�7>)��0�F�z��G����C���PW��(C��w&m�^�%�D	�C�Pť.亁 ��0�E�{5t�#�\�կ[r���b�n��ii��Oq���[���c�;s;(b�Em��P��2��^��/�ZБl{pnn��f���˓��q;�v�Y]f�m9��.hH2�/BF��Q��K�4��7o ���|�G�TX��n��?SQ��I9%�L�P%3��e03�+&Mgse׆��J/M�4��i�җ�v�:gM���6���iW�Ev�j�V�0���>������z���ҼE)
03qs ����"4dp�JmGh�(!��,M��2婢����nDq�g'���f�Μ\�ZI.&�&٘%���=_��㟨���
{��ot޶�v�[sk��e��%ro!�!�=�����ꭓ�B��l�&�T6�%?dcZC@p��6�hC2�{Fm
����$FQ4|���$�`������`��$���<|M�Ot�����&����|XM���$1bXj�
x^z��uv%���XI�=�6���\�/�    ܿk�&�i�H�.zmF�����j;�0���Y�PN}7�WD���q��q�1[(�}��;��,�"r�S������ϓ]EF�"<Z(�}��J�hS�V���T��V�vIY�w�0�x����J��xfg6�,_.��
߮v.�Ve+'��x�q�F�q�v�"!W�q�5s�ԉu�������a���ч�P��/UH��-¼�7r0�����*A��<���D������Ȯ�����GcM�?EV�� R#H�&Rk���*�&z,e�(��ҧ\�R2���3:~u?�6��q>M��u������*Ӹ�=���tp����0��08~�:�m�B����� a�ﲡ����"t�P�F���!pH!�d�&,�t�]��=MJ�Y���lx�e�q�lf�q�d�*P''�J/-(��ˈ����r�3��9k�R�k�r��פ5�
<���W�Z��,��0����ؒ�ˋ�?��)�� `��Lt!����6Qk¢(��ʂ�*|���,J`I��\�C�ud�r�� spPz4���N��M��%��n�^������u��'+}hå�qa����c:^@��Ծ3)ӭ��l&W���9���V4��_���E��6ǎٲ:���=�#l����<�!��f@rm�^�F���?>ŐB±/���S���-ܔ�T3�>��б`���Ǜ��%~ZMy�	Y�����D��K.��8G������:x֕�-P��O��y�����i�v°��J��6œ��u����[,�<&�@q0_H��.�A��Pd0@V��o�D#a�.���<}�W��5������8���M�l�������Al��l5s1l�A0��6OO��s�����N��"F�:*Ki9\z��#�����7��2�O7��ߩ!�N)f(*~��;�,	�Ws�l�2�i�F0�R͈k����W�uԈ�V����Ӽr��F�DLK�w�8�������������!�3���>_&n�;f^D�lV�=���7�6Xm0n0�t=��[��}��!b�D�0dH"��.BD��P�͢N]����:�J��ts7n�㾒��O߆�Eʩ���n��ψ@�u<�Ko���Eky��s��̄����}R^秡aMXu�
����-��Q��SL9���P���x��6
���?�)g�I�7�E�q�{���$�ȍ��9�����w5Ǖ����*���;�Epe�f��ⅻ�W�9�K-�1���0%�/�Oq�b��^�p=��'qF4�έ�-��o���\ufh�a��}�b涢�k����9|UC���=��Gb].��
�{�Wΐ\|^��$M��L����!�Fh�b��<]�}a7\�Q�n�]�77x:�߳`#�hN�zFD'%OFu/d�u�҇.3=z��D?X�KvE�;��f�Q�ҕ�"O4�&�����k�p�.x���#��8]s�_�1?�a�G�P�d��"��0���7r,8L�?Di�	s���� ���n��!%���[���ħZ���F�tLJdřT�=("����*�����m|��uV-�)�/S�殤��c~�3�ޯ�1����u��#~������3A�$��"Ddhe`�����D�¿(5E�1��Jwgz��u��� �|	w�����{�'����d�8޼�3>.���Ns�f	$F�I�H���g�,��鵡{��D﯃ѥ׷���k�B܎�˸��i7��h{Xȅ	!����I�7�E(	�1��!�7R(��݁�$��tj�T_�mE ����~6=�Љ��$�YLR0%�O H3(	Jo5�)���ܠ��x{ 6n�pO��/W�SU����0kc�qv�Ĺq�;��2���謹��O@��Mt�����y�B�����{�r�/d�]��x���A�ꖇ�V�����n����K_cۑr�����4L�b,|3H�x^z+Aq�>VWZu�ҏ��J]��V	&�Q��q�U뼯,�1�*�?U��C�Έ,M�A��f~��V`�T�8�<�!9�����ak��,$P��{�XH0N%�]���n؎��d��u�o5t1����_�l�S5���a>����N<���RV��CPJi��Ht��x����walwKNNڥ�p��f"�0\fC˽���M�L���ܖ�L���Dw�$=�EHbD�����$�	EH����9�u&Mr(x�&)v��L8�&X��yN�(a��Y�|�u������q�$i�|���/$�<����SR����_ZV�+|���ћ��]Bj�ϓ���0�h���{��g�R�6���ܛ&�I�֛\�o�#l��uWy�C��̀"��s;�<���'�f)4Uy�4W��][0ώ�������H/{� f5�MU��H24�w$��B���72���b�P�i�tQ@�W��:��G��mǸ�˼�ք��ϵց��4!^xz;��xs*C���|���E ��ˤ�Їd�E
�1j�cU�,�C����$�����M� 5l9Q#��~~������R(^FS	1I�����$����Ž����-�Z_����a�1l�erӸ�ԨU!DԘ��-��v���"Ѫ*�2�2:u��^��!����
ɽ7�E��i&�6x�c��,���Ȝ��1���]/�t�����ÿ׾<��4Vӷ4	a��!ͼ�yHJ/=�A�3�|�$n3_U�Ap���\�W�%��Nϖ��9k�s��:sk��W&`q#�U�R�+���9Bfc��O���C����~#A�4ɠ��lxN��+^ue�������r��S+����J�NI�ޡ8+�;|^�T���ѓf���wQ��(T����>��d[ĵ�l��|_�-�n�:5��}�7b	�2�ߊ��d
P1�l�!i�ƺ�+o�����E��4$0�Ke{� ���U]�b���:
����E��T���j*��&��Ҭ�w$)���x(����.z���oJ��"�Υ�8۵�~�n��Ք��LU��N��MR�mm��7��{�Z��0���9fc��7�ExH`T�^��,���|d�f��p�A{�W��p���u�@���1�{��*>u�\L�N�1C��S��ǧ���	�H�5�fU*��:#q�*Z�K9�j�t��7�NEp��m���<m�F0�|������r��P�� 4L 2mHF�`/BH��P��j
��e�gP��S�.��-�Jزi7�%'z�祜u/̬���Q�ڦ��S;u�����7�6�?Y�C.D.T�+��U���O�IY�U�om���x��W�:�z�f�s0/ƃF�w�J>3M�3Cd Z|����7�E�	�����òI�ϥb�aP,"w������'�؈񯁝�j���n�0)��FҬ�HRz��MO�Ap95k=]�v��韌�Z�Ԧt��M){����mج�Ê�c(��1q�3k5^�D��-(ڏ��a�(�Q�d��"L���Ptx���jdgRs�&�v�h�������]������?,�7�(�I+9[4x��pq^4��i8L�V���'M�Ky�l�j�6,V���-Vיx��n�Ġ�����U��u��	�Q��˓0�K6���{�[�y@���g(S��s�qʆ<�a�G�kPG@7�~(�8o{��M\���>rk_:P�;�72�i��z�%���rZQˢ���g�a�U'�%��CHsA+N=�U5ҭ*�\��
��1	-U(�}��;��4Č�n=����8'�H��]3��+�x��<��;�13�[��K5Iô�$��Hu�_��埨ӆ�O���17�ʵ�v��xN���Ԙf���7sa�����=���ai�k�.��	�>���&��n!z��P0��l�!���@zmbv.xB�x؍ ���,�:v��k97���wS'�3�O���H/�3�a3�+���s$�0+C<.}���ժB������y_5.+U���kk�}�����|����Nʓ��zl���b��u����D�@c��I�9ZH��0.�>"l �>�"8g�8qE    Щ���j��Kb	d_K�B�	˩���8���D�#�����Q�~_Q&�~�S�:x��ke��l��5��K���D�����K�M��!).�u�W �1����c&֐t|�^��@��
������YTZ��{�@7���(Dq�[4��rl��7��GJI"�M&y���k"q���[n(�E:����g���N��T�ˋS�?(����b���ѹ9J���;o��i;��+�r���Ԧ��1$�`�!Цp�e����h
����$�p��}u�]��������Q���T�o�K;�ɔ�$-3_�w���`�SR��B��3�������6+ƶ5�Vx�R�46�VM�sV4�׮��2�τ=*��}�ph��V����Q��?�bhZ��|3�9�6	��F|j�d��I�(PaRW�sM�wS��@q�h��WUR���ƧR��q�I6���q-Z���q)�E���,��}�Q�ա��N��R�o��ō⥣t�qfu8��Ӆ���i��j�۝��w[�$~�|b@�TOgC��?�0�f�R��a�C��$�(,���-������� �,�5�nսW��b*���%H<�YQ�HR���7�[L���qb�ƭZs8ø�u�O��ȍ1����r���q��5�>ZC�~�O��֦����@a���C�$f�I�7�E�1&��p��-��N� �	���dJ�@��\���u.߯RB��!��Xꈘ�%�Q¬b$)��Aq���k�EM�KFW��q���z�.�A��3��M���My�pd#%���T�E�&e<?=	s<���{o��ph�L��qL���:')K�Jk��}ۭ�V�WN�o�����<�4��aR�\�d�n�Ko%(�&���9���Mj����r[8�t��;Ǯw���2�n�8Kr�'����i�_�=A����0$�Pa!Іk`$��$�4�1�$S��f즁�)�	��W�e0]uj%	���`Z/���4|JJoE���7ǝ�r4Ļ(��X�'eO�4B��r쌗D߾�J6���u��|��xz�]�N.�"Dq�`��A�$��"D��-���8t�60�d�&��H=ž���Y���[�͟bzK���ޓ�Ħ�y�>.}*�{�T���|�'��B�ldc����B�yi����66q����a.���WK��ai���A���M����� SxA�v �� �v�����?�$9XW j����'H��j)���*GW����T?�n*Z���
�d�S[/d�j"I�S�����d�\$t+��ʂ��I��V?V���P�����O+�Ӻ�w'�<�s�5{C�7�,�2��@��̓��o��2�A�l����CIK�?A'��bۺ�k=���[���*�#E�k��~*,a?��!��=^�J{J1M(f:�S=N�y�i����-K5&�}���ohpظ>��k�4�ӄ�g���	���F�v~:�]��0L�&u(f~��;3��w�a&�r8��Y�8����-�������J�h��*�AK12�k��%	�0��c�8F�H�A�HP�T�bc���� .�n�2l��`�^Ǜ3���Bϻ�i�A��l�����'-D�u��ɿ��~o��boҐl|C^��@�+m�lqJA'o�K�z�6Q���y2�������o�4��M21-�;?�D�?7��ơ�ΈS�j5�n�ضŗ����n��`p^nmn6V�]Y���x�y�f�5_����l����'PŦ�C��veb/����@��!�q��8:y�\\�	'���aЦ�H���ϩ!H�񡝎m��C�1Q"��f^�=��^:p����Y͋��﫹6�t+��?)�!�mY���m�y��Nꑢn/Ӌ�z�Q�A��˯(r�! 1K#^H�q.BA��1
��
Cq�	m@������J����k�v-�9���)��@������C/I���$S�x��C���HPz�A�p//Lr��q����v�]����yS��5U�}uAMm�'ϝ�>+c^qo����	�\�@�)v�A��o���0L'� �c�J�8ǑtS'`���H���(�A����nʎ+i�经��*��tS�a)����7s��d%���J��p���ͩө��f�;����å�[�Zk+��&~�l��t�l����{���\�J���T��!>0i�9�C�͂"�8�2�b$M�$tC'GP`�L�{xK�	ϙWς*�4Z���zV���:�9���hj����'�,k���8�J\Z���խ!I݂�9p&�
��Kt0na����Fq��������75%m�L�+-?���_��a.�s����'ƿ���a��|B� �>܈#a��ai����k	7�q�Y�w�W�"�S/�;My�Ia�o�Yns����EB� ��/&��\N�V��-	���d����.{!��5Y����Rm����hV/�,�7����p��+���0���o���hcDp�,��?q��e��k�D���xk&O���4�=���>���/1����8�2^�2oaBA�S����1��Ѱ�7Y��?V���Ҕ���\�jS�4hz���#l�u.�lt1��$���Q�2Ą�Y��$��"�$�fvP+#Es4� ?��dHO�'	��5��J��p�a˦紫�vH�^|�'i���$f��%�72�	JqU�^bġ���w�(����~s�O���Ӫ7������V����U���_�����n���w������C��̀"��,L) �]����I��L�i�k*��4�(Y��^9�=� a7�I��a�H��$?�4��Í"�f�o�M���¤\��Ν���9�9�U�F����sI#����G>ߋ)0��	�ɝ�5$ߠ�c�V���Q�H��ŋa#�]tx+�R�_���Z)�m��%�FZi'��fڏIJ��C���<$��"\W��2��3aח�u��D�!�2��N�)ǺC�a����=jdP�8]���r��w{Zk�qo�C fH�I�7�E��&!�i1<���b�/�Lx�I'�8
;����<�����Z{�,�?sI�}>����+;
{�?�Q�'X��?�b�fw1�_��}�^[�E��LsZ�/ݙО�;�+JcNj�x���mz����^����c���m�HB��i�mf$/F�

�ʄ�aɚg'�Co+`nK��V����"���k�/��Č&���˞��
��J�P<l����쵶�^ۜ��=�D��t������V��1���:��H�s����y��課̏rhk����q��1���'ؿ��M@�*80�a,���\���c*��(/G
|�E��e3	^6�sL���� N$�����oPI��
�X�Xӗ)�e��G�o�s{�r��+�8�`��5<�f��޶�Cc�n������3�a9�B��q��8�20l���P����챠�ʮ��]�o��j�m��(�?�$��V�LKc,|�3H�x^�T��ao|Z��s4�=?���U��|�"[�<�:uSr�`W���}� ���k���}8^������\�8p0<���o��hc0\0"$��iD�e7�M�?o�κ�;|����J� �&SHRw@Bi��>/}h��L���R��j[��ڹi���ز��d[���ak�,&�h�Wx����^�ז�(�k~-�����' 0�;sЅd��"�$�JHq�����t�k/YM�,Qq���l|��_9LM%Ʀŉ��yVbl$���t��H�v�m�̂�,�;�˼��ݐ�~:��о�6bm߳���Z���N�Zۘ�:���#�� !jYr�����"d��L?��v;����%�17Iƞ{��P��4]1��ҏ���b�O�T�:a8�ΐ������OQ�C�ؾ!�=��}p����;�_6�A�0�^p�kO?+��n��|��;[�;�Դ���q�#L��q��$��    "�d	��=���ai>Y�@8`�Ke;<�G�.�����+j�Q1��P)��a1��&2��&U=%�����<�>��Atɶ���eV�eqr{�Z���[��X����asq�o�����m#p&11_H��.�A�M@�<����5��S��F��<��=_1o��i
~�6Ϯ#��5O��U^�b�"/%N\�=��xI�C�e�޴&f�����h�M�|�T7wr.v*�6#����=Ѯ�2��f^SÒ!���s�ܯ�9(C1��ߙ��f��H��ᔄ���R�s۹���(��T�Ss��k�$J�����T�MLO���|��Ҁ�k�۩c�~I����Z��O>����;����u��|��TYG�Y||��x�5'���?����oS�($���!���`�!���;��$�R�殜u{�s����$[�R�tJv:LtRk��\j݋��V�z�>/�t��wmNϭ��GZ���&t~5)�b]���h�uG�?E�52�O'�:����DXV��,�"���w'a��٠B�n�m��!��4����=`���$��;�n��WQ��{�����eO0��������d`B/�z�2(	JJ�cƗ�J�ɓ���~�5��K�j����	������v�hoj�����;g��Vp��Ӕ���W��H� L��x!)�ƹ�6��a(H0aCp�
OA�$Q6=s�qs�����O���C����_�^��ĺ�s	
��m{����v{=�f�X��M�R�yf���Cm���ї�KOw7���X�t��[lpQ���F��Y�� ���ʆ��o��Ph�0����T�����2��#A͵p�wW,�U"�Xv�ޜ_o�"�$c��4L	c�������	V�<�Qk"'�:�J�	ոI�Ю��*�����jþ�?����r�jQ��4)��篍&�<�?����o��h��������$ɥ3g+�J7�G7?�ׂ��+���^���J��[N�Ҥ�񔚜��Ӄ냳�M�F�3��|d"��'�z�q�c�f��1;n�A�T��oq�x�in��"N�m�\ T���8��XC�����jS(L_,y���
�82�R8΂-h���؛����}���L#�f��I�IBf��c.�28���>U�Hih�4�����O�QD��1��ek=A�y���kP[�$�vP�y���-�w���A��;�?F��b�0����8$)��!%��a�� =�����II�$�%#6K=\��
�]�^
 m�S��1�H��X��fU���W���Er�;�0��*��"(A�_�����H}�N�:Eӽ��y��tO�$?-&���~�!� �CR�᪚a�.��m���bd��S�<�*�j��ӫ�����s�c���D���d��[�Ф� �a�X �� ��=bH�X�!Ц	��C�F�w��
!9��J�������Hwo���覤�ö�Ժ�$�S+���i5����'K��2���һ*\'w��פ�7�~G�E��_f����:�֩O��u`��fZ�@����wk�^E<����C�u1ă�I����1�E	��{�9�6X�&�B��*��k�m�-�5�O	Q0��(�����Z����D��P���HPj�0ܢ��̀<�Ԓl�A������t��D�Ήm��r��*��T���>����}L��#���G�<>:��F�u1�EX�i�fK+�����|���2سlY�J�>Z�����B@B���䐚���N�aO'b�ĉTl ����KzpsI�����=NO��<��]W-۸)ܨ�ieon����l판]�B��zdܭV[6��T��("B��ᆤd�{J2��0;sX��r,���B8
cS^t�d#�����ӳ���Տߩ*%Y�f/���(�S$�e�/��Jpc÷32��81+��yӘZ�Z&,�!���=�7����n<�j��]�����a�r��#�b�4���s0�lX!��[�z��(�����P?���iC	K��U�D���r�1F�'6��&7�N*�&a3�`�!O�����cIJ�pi6��#jm�9ҙ�he���Ɨ;#b�&��,��%k|LT5�"��[Wؽ�H���i�>�S��9BfBs�Pt|��w:޵���#����K�Fp
�7�G�����~�l�}�(��9���j���L�M22C�ha�}�|^�Ѓb#pH*j�v�A� ]2����e��������EWm�C���?�����g���j���ߖ��@t;��Z3��dcy6m���|K�B�"Rh6�Xh,�8;˼Y5�u�1���� S�s�B.�k�~j��Ʉ��2�!�\&����HRzW�KӾ�M�mN��h[�σm� bΔӉ�p��i:���s�B4j0�^�˷��lubn�N�:���V ����!tHb��!&��I�#Km���KHi��Y4��a&/ ���6JC�G����ת��N*��i2�N�?�ۑ<+�IJo�pÀΨ �k�8�Mw���<�V�A���GN��^mGX��˳M�Yo7��V�����S˿4
 #$��8d�I��"T��ai��H���"�,�ɂ��vT俺&O���l�$ٖ�����5����O#�u��G�Vɔ�s��Y+d�����#ۮt|7hW���kgù�'j��mz>� M�G������F/uݘ:�U[��F}��O�|R
bR��0%UـC��|N2�[!N�)l�_\J#,�3��|MCKI�u<��ҏ��r���@�G<U�\LXN�1C�9��.Ϡc$(�+BN�o��뢊w����]�������o�j墐ݑ�ڤ*Hz{�m���R$1��h�z���^h��*����1�E	�Y�R���p�BuHB2J���K�5`�a�߳��+ȓ:C�6� ]��a4}�&� /y-���Sn]q���t&/�k��&��_��}i+����ب�����zK�ڝ�hM�����*���h<ph"��=�C����yxצ�j8��h�b�kMc��	��Z��|���z����N���&�,&]�H+�A'������&�|!k�~�J�2����k���O�6�kZ�զ�j��X�j��m-�\��)yZ�暽]�+�l*:��)Y��R��Ɇ��1�E(�0�1VY�|�)�I��ҁp�k{.0`�Ïoզ�rjj��oF3����t�׻JozPD��6����rv��V��u�M{�lྎ��vm�"g�������ËΩғ��,��XdK�s�2$c��hS$̡�j�����#�d9.�1UD� ��m�!;�#�Dj�N����$S�F�F�R�7����RS�����v�=t�2pU�F���`֩��u{�����ef1��˰c^7�+�P %"� f�}��$��.BB�C1�r�I�v��O�f:���Щ8����.��;�,;pt7t7�1�zP|�&��a8IĔ�=g(����y�M���E�u}3�\C�!��T�6*ج�ñs�;��]ӵ�yF������&�����q�Q�O�%�B���0#�s0����"4�1�G)�M��H0�bx*��lS	{*�-���A~��\���O��	{)�9C��8�^�r�_��K����L�ԥ���+�)���M��L��r���=�3�3l��m�ǦXs��֗��ݯ��4g>싐1���HC�1���6���~D	��a�8�pͤ���
vWY'�mV�s@ڷ5񮖤��$!��d��]�AƧ��҄���j4�syk��,��8�uQ�T����^��`~۱#�����~����F?���i��w�-2�*B�[X̐T��.BE�U|�c�7�����,��?E4���QtY�Aĺ�����20���j��	Qb\���-v�c94�F$��*��yl>�Ll���D0]�	Eڱ�a}ܭv��Z���b�R��>���P8+�������/��0�-9�B�����wצ`"�aOo���#X$t�S�c�����^8�/���B+��JrgN    Rﮕ�Pb�)��S�靄�,�$|^z�@Q�pZ��>x0�
s��\�Q�ۡr�����2�n��U��psk�b�:���`ҝJ��4�?j�/3�'VH������(����5.���Gb�É���_���L�	~�ɹk$i�f,I���Eg(ˠ��y����2��Ye\d��x��(��،,g�TG�ƒ����sB�m�2�a����o���}~�T���T��@
I��"�#���
��^�ox�hG�(8r���_C�pT������yh�c�/�����(�ʌOKop�@zg�[��i*����^�l��	+�:�kҠ���;�8���p�qM�Ϊ����'���"��u��,
�
1TH���!��P��(��w9x��E�p�F�jo��������8�ASȡZ*���d*�&!�̮���k��K��)��b�s`�^=�X.p{omd6d�W��{;�Mbm�<۬�7v���#�P��(\�X�׈�?L��p!	�\��@��!2k�>�(N��/�KS��p�c�������}��+��R�|���
&��b���p欪�HP�Є�%Zs���Φ�k��
ސ��|�%(������j���q~}Z5���;��ƨ���ʾ�/����za�B�l�ِC�2ƾ-�6M���p4N��.����i��s��3=;��.�ɜ<�f2��O�'CY��?Nǝ��N&�F���i`O��Z�'�<�w*�@��pٰ������fw���T�v����"��ѷ��ԓ,����|wm�|GP,I�;!���%/�F�A���.i����Hɖ��{h'I�a:IÔ���wi��KoZp�f���rKu[;�w�X;6LZ-k����@���M֜�aFo,q=�.+\��r�8Z5�u�χJ�R�;8
E�L�!��]��@� a�g�ڃ���!�/��"�G��e뎣�n<N�ba�cb�t`:a8��x!��N�Cӟ�p��z��E�Ӻ~]��1���A�Z֜��.��ʫ�v��7Z��us�+]�h������g�?���0��OgI��E8	�ify$%)��d!Y��S�C�
�٣.Ny��}}WKr�e/���g��L?������z8J�o�j缟���K�>��%j�ٻ�SV���֗��f/T��LN=W�Y�m
�r~xF-Ё.��Dfk����a-�8�Ͱ0ws`��1�`�G��Oe,6؃���E��Óv�ru�{L��3�0��~���f=�GIH���ّ.����9�h]hNkT=�X`M���W���v�� כZ����%�KA�1F�jm��yt�������]����?�F��1�E	�	��%���dX�$��z�t�����M	�!�8.����� �}(�]1�ń�$3ğ���B�d��.#����o�5�UG��>����}~l�UV�ɬ;�掬^�uQ�T�"8������/��[F���d����"�dX
�/���p�!��q���Q�'�����QI�,�`D9_���uӌ�����)Kp1f1�^ZP,����ns=]�H��p1�Z�5ԭ��j��3a�-iR����a Oju�`6j��:��-N�@�i���0$c�����ja��I�A�C�Awz P�bT�5"pC#�����*���jP���܋��&0�駳]�?!���F"�5|%3�5��P��m9�DǯIt��5�e���م;t7�&��ƃ��[5�I�T7�:� �c���`�^�� ��{�0������i憙�	k2tdk��T֡qѕ��|蘚�Hf�s�T�Cr۾k�Rc����OQ�R�Y�|^z���2پ�d���˺�)]�	�|^�� {����뛊�/V5�Lnt qMn����.y�ɟ�wҋ���Ij�̄�~1�E��I�~,���[�I���dl�.8J��{�z�Fu��ٖ���v}kI�PL�0oV�LB�p`%k%�?/�i�];7�J���`�r��굦�(헷����4rd���\W�&�k���Z[OEJ�n��X��1����w6,��.�B�M�0�F�G����8E=}�w�w+�Y�� (�����a�oGŻb��oV�,L,<��H|HJ/=�n�S�����^�-lG���V�Z�yC���kʞ�[͎��P�x^�!��"h"[da����b��+�x��1$c���hs0-F�� �%P����8�cX*ݫf�/������\G�I~XM�0%Lt�2Yx^zӂ�;e���k2']n4y����T��sw3�����V�d,��E}��өrc�K�2��Ey�ס<@�v��0$c���h�P�,���,��p`��%�=�^�E�7,�e��[FX���+
��:��M��I���T�G�R�ED��7���=�H�ӕ����_��#s&�3�BHJ�l7k�VUq<�loD6�]����v����=����d�I��"D�$̘p�O0��N`��l�p8��g��۬�g`1/%z�E�v�o�|��o~���9?D�^�34�Vo$^ё"��)�Բ'Z�T���m�x:�U���ѥ3n�ޱg��۫�����E���� n��D������wm�s�1�bQ
�~`'�PX�ntn��	K1��H����DZIF���L��|�Ҷ���+�����0���h��Z�dW˜W���nؾ��y��ך3j��X��B[���6{���f���o3�9PH���!�&(�Y�$Ȱ��s06�J���S���eu�9?*��Ca��>�������_Z�9��.�`a$(������ޡsZ׮��eŷU�h�e�]5}�^���9M��,�ʰs�i�Æڬ+�nz�-ݽC&�@00���(C21���6�C1���A�n �I ���H�_ò��M0S��t!f���D|7��aR�h�H�����X	.lo�8g5�M[�q��7�˽Z���Iwf�޶>Ő�l���ɤ��>1rǥ�uGmO�7`���� 3хd`s�}h��c0�z�0N��<�kaO�m�Q��Sz���؎���_9g�YM��}��{@�y���X�G�n�ylH�c�Us�U�ȗg癶���X�6C������pv��x�Y��m�w�)H>����=>?Lߐl!��\�4	~4�3�N ��b�a��*Y%ei����>�a�&s��$H��3�Nj~�&Y����b���S�72H��ޕᎉsڻ^�ո�듞7������C��ͪ�up�V�UE���x+�����(S?������6��9Hَ��1�^�9�CR3ƿ5�6C��p
e�0��߄c���Mja ۖߺh?��m�V��u�N�NE�^��*>��
,>D�w���x`c��Ș��Kc�V�5nr#9�6ʜ��N��G~#�L�sQ���J�ɱ7�����{^N�-`���:$3c��0�;�B-�C���H�F .yla���6,�oK�s����|��)&%��a"q�IJ�"��� Dn����u��6g��~�U��-ٗ�T�VMk�	�ѥ]�=d�o8�`n}6��h�U ������g#��w�gc���P�~,J�,E�Уt�q��X4�I;0��}�#ҝ�t���9�.�S�LB��� a�+�|�RǶ�s���rf{���&�Z��1�Tr�nN�@ܽ>�������s�����]ј��h�@N��dc���"<�s��M��.t�"0N;O�����2���*h����-���[�i��d߇�$�R��7wi#A)V�ۘ�~M�#4�����Rm���H���wH�'	�#,#�����4�����nKt��h�^�� f�}���q.BA2Lt�)ca�6�聹�8š\*��ý����`_6U���<�o�,͔;�n6�P'��.��=N�����7ڢM)����ʴY��v�!f0~�)�<��h��ʖi���V��a���4,~ 7��2���P !,B�V%bH�X�!�a(Vda�8���j(�"�ڶ \�'Cܢ�|�|)    &Y�a5�01�*�f�0�b5������y�A{�`=e�hT��×�ڹ������5vs����i�o�QW>z}�9��d���c!�(�L�ʁ��1�Eh�I�+��q���x��UC�
�la���-)LO}]v����H1��4��r��H���h�CV���X���I?���m�o��[a-�emn�eG[v�۰b#��$G�nz����^ʂqk,�N��ZT�+CP`��� ���"����0	�5���"��RK'"��__9�s�
��b�:L��]1�8�M��	٧�
�\��y)V�b��6TL�PI�؃��R���穤b�|�F;n��b��D�]2��0;�I[�-U�+X� ``�7��B1���x��X�S"p�Y�b0�M�x�i/����� ��xp^��Р�uh�]'I��Z�x��څ�օ�K/��73vI�Uǣ�Ӯ28�mEZ�e��Z�/����F7�FcƩ��V��	���.l�R*�9E�Y�O��8��xBr.��p� ��s,���0�=��q"�nKE1�V�c�����
0��D RK���L��%����P�y�
J��{<�u\jO���tbn���p��k�zA6Z��X|ʸufg(���۽,:D�G5���|�X*��a uٗ0$	c���0�3��@1�%)�\D�0h��ր_a�$l;��O�����ݰ�>=/<u�i�C��6�!�4�ř�PPzӃ�᪺��[Y�ݱkX�E�|���K�y��.{�ۣ�zC0�u���O��6�+-l���-�!8�c��1$c���h���@	���Y����ͅ�.�u,%�Ҽ
�<W7���/�q��J<|3�J=L�>�CaV�a��+A�u�+�����H'�jT�:x��b� ��^��N�w��%aO�u���2�'$��4�.0����a:�`ɿ�"�/$���R$�C"��8�
T/Ý�[!�$�;���Ų���E��e{	��n��)�I6f��9d��F-_�қ6\�f�]|ix��:u�w$�P�jy�^:}�������A������Nwp��f�l�MIϿ�;H���iĔ�;$7_(BM @1��)e9�c�B�±p��S͢�}E4|].�-��!��|"�T6N�r*'C�o�7��)*���]1s�eU�M�۩�;aZm����u��;*�e��;=��''���������Y��@9��]�Ϗ���߻5=P�q_r �de�}Zm�	�a4E�i�$��T�: ���8!%�V�]�.���-��P����l?dI.J�<�Jo:p��ۦD���溒�
²�^���_�n��d4^�m��u���|<������`��o���c��0c6�P|��w
޵����S-X���&�N�I�����Mp�8(��e[��o�*I�}L�/-M�yȾ׻?/��AqA:�鐋�flx���@�^�L�8R�ժv�x2�ۍ6�J�̈́��s~Xvn�|�V[�Z���X��!D�J����.�A�M� 0&�.�2�3��l8�9��`�_G�{�@�=?ҽ�9ϑN*�!6��n�}�6 YVfx\�Uઙ�aX�4��3z^�̩��b`\��Pk�"�Vk�)^g�әe�u������o�2���"u*�g'!Ras0��]n�m�J��Q���e�k2M&[0��f#ݽ9��<�� ���#�PS������2O��/�|<|W��縵��fZ�����צ�Z��Z*�W��˂2��n�=����x��h�Y�ˋ:�����@`1����Q����1	��h3D
"0���ì`�EK����
8r}��u�H��k��9�,=~���0�ddJ�9�'�f��!)���Y�[Z��q����ug����//Hyw;4<cv���e͸ԃ�:�n[[��-�6�cjܹ��s"��!1dH"�h!"І�\&���h�� ��	&yͲT�������Aw,����"�}�k��]5Ӊ���9���8N(ˊ��K/8'EA��~�ܑm��+U[|�'�����|��ƻ�z�p�i��	�X�9�Յ�s���^h!??qÒ�-$�b���h��<���#�aC�RnLG1�ڞ�,�9诚���j�lV���m9�-�ro?!�{�!�̽	_�ʻ	��>���Κq�/��P�o�*5�/�h�����vhO/��[͍F�\�Ʊ��p2_���=�-􎐡���Lء�����Լk�0e���I��10�3�%}� �8�׶l�&��}6�E������I�1e4I��>g`<�Ƞ�STzW�kp|Rj|o��O�A��5�=�Z^�Ư��*���4�ضe�*_a�M��%�+n���N�`��Bp2oHN���$Ц`J��s�C�8	�\�B� ſp�b�ᴓ���0|ѥt�l2����S^v���v�F��>/%4��ys�xw�1͍zi�q�:�Ԧ|y�.D���ٞcTc����p��Z�!�Y{빰�L���]��2D��f&�Ԍ�/BM�B8L�����D1�!�P�1�$��'�S����`ҔhT�׫�P-���J�y$j����q� E��^0k=u$�ƺ>SM�l�=u[�ݓ{�[c38aOl�؄�O]v�2v����I�hc\ /1��,�%K6����q-B9*�+Lz�o�~��cD�q3W9i��u/L;\�E+�+��%Kr%|�%��a9�W>�I>�� �KV�Ї��f;}�`��:kVFJw����eG�ֺ{n�i��x��=\���?��!7n�����V���/�"��@����C��Ł"��$	�ڀ�IS�AǾ)�e�M� ǆ*�ut���F#���d�lj�����|��ddR�A�P����q�M�~#�]47�u~��u����rp6�.g��av;n/[���m7�����V�9�S�Ź������v��1������-$�b���/�s0W�$A���P�L#(�L2kg��;pT��:8!>��]t��Yc�o`�����Ɣ4�7L�e�/�ǥ-� Ϭ&#���t���o,Yi�e��Ǆ�m�&��FKĩ���ɌspW�X���?�Qv�mL�
���%e(&���;��Lc��X����cI���m��؞��5�x-�y�%��n�"~+5mf�����bZ��ŧ8��OQ����q5�Ə�����Cy�I�/��il��l�����16]e1�+�C8�Z��>&��1&����8����XC�1��689����?h�����a.�J���8�V?����J�}��ʪM
?�j���ǥw%(�k�����ơ;�Ntr���rCV�ӕ+ι*k��o�/�v�/�b��w̠^UG���ώ(Ј$���������/���(c��1����� �T�N[�mݱ̿��ۅybφ���~��5>�Skc�|ju̐�����Ǉ���7c; q�[����zV�Low�10tcH���zv^7WN���$��^�ǡG��^��6)��"���;$3c��PhDA>AMr�Lh��FqK�_�A�=��WN�`K��*Rx�t��(�����4�$eZ��˿�3���bE(>n���b�Wn޸�mz���̺��BB�#�65W;��+�+��J��z׆ip�9n-�]�Z��!0}gs���cz>m���e(�[�ϗ�����5� �!��.��/�#!hhd���SɌ)�g2c$�Jg�$�X��'��v�Ov,�6׭�l��e���m$c��8����j7]���HPܔ��ބ �{�%X$["B����Ɇ��1�Eh�b�gCC���_F���LN"�������oh���ئ�7�uR1�7{�0wB��qf�#I�E�����D�e�v�^0e}c�K|y|����i2��X�"PL\��V�~7յ*kW����?���"��>�ܴh!�c\�~@�f`�h#��Z?�ha,R�L�x����9��k�D�����$�j�_��
Sh��P���\���[��_��F��gW�.6�7�����_�	Ak�ܬ�zޗ�e#�Xx,P�}&��.    �Q���wm�!AMp��2��A�!�M[��wt�#�r<��������W����"�!J��nv��JP��ێ['�#�Q�@Q�*�Ϫ�ig2�s_|�6f:�$:�Aӹ-h���0�ԫ^�j{��%`P�CS��9�8\H�(! ��8�Kf:�K�8|���8Eɼ�e8쉖-����������'�����w�t�bl3���)K�+���|�PPzi�e��V��q��u�Y4 |�%����f��l"�k�޳���:��I^�b�`����#�S�R/��ك�хd`sm���7�9<��?�B3Ţ�d��*��7P4p�{U9��j�s��%)�a4���01�*�f�0�b5����ѷ�*آ�W���$��2�U�Sj@{�&v�5w.�I-.� ��y�cRU邑���Q�n/��/aH�Pa!8��L���pn��� ����@u�
俾๷���d��]�|�>T�D���$bJ�9�4�f������כn,3��?nUs7wO$�#�̡ԭ솷�z�OkN�k=�$�r����se.p��]����F��0���hܙ�1$c���h�P����C9�����I��.�FO8xb����_z�⦣��1�M]4'��^H�˹d߫D�ҧ*3��y.�a3�JF刳
�O�e����M�|R����8��Y�n�*�67��qu���Of�E�0P��D��1�E���C��Lx�P8|�6���M��3M�7�(��ym����ÇR*+��d*!,%�������қ�����������jp��	V-�Fg��V��Y�l�����_���4ns�l��b��� ��j�P�[ 3!���;ֿ��10��P�	��wXXjD2	�'��z��#bh+��Z/W�-Y[03�U�6SsB�hbwf�̑��T���٧�cr����Z��p���k*&:��WS]���&��|7\��*��h�A�0�i~�Q�./B���vȆ��1�E(�Y�V$,�Q����{���et2�auNҏGňÆ }wg�G�{�橜���$��.2�Eԣ�77R�V������;R�Vi�/wd�����$��#	�ڪ=R)�Z��\?M6CM�m�v��vE8B���'g����"$e�8H�tX����
���`ռ��p�c��Q7e ���u�+'9�n8���,Y՗]�	J/-(���+�L�̥�޶V�`ϗo�m����(�`��Z8�dn�5Z��B�m��$lA��K��/B�f)̆��1�EhxoS0��#Y��O�f:���i�Z�n=;�<�i?z���t�TVS�O�i&�	�ř<�K~mP�w��''�`r��6�	A�ew��>~]bG�_(������P��n��^��B�X�ί{v
�=G@PPL�D��1�E��)�,ZAY:��EXgR7�5C8ăt#�$���-#6{���$���}�0����Nӕ�Z��^�u�������_V�A�p�<�◆K��Q��A�?��@��tz��~~=�P�ON�Ğ��1�Eh�Y�a��$�a�4��L�y=�w�u�sœ4�Z�*�c7��t��S�S��\��N���ZP�����:	̫ZF���v��q�6W=nX5���a�����@z�d[�#�֋P��1$c���hs0�!	�dP8C�	����)*��@w]Cy���Hh*��XM�����`�|�DmJ�>��b�����ϕ�nui]��!ޮ)�f�<j,�t|��pf�9u�>�O��u����[�h�j����q�ѡztf#
źwhg�]�Ca��9&�����A��
g����%������	�'E��m��P��T�0!��Yw(�i�].<S�Hk�U�?��t>N�-������s®�ȓ�����z�Ui�C��/\�jU4�\�E @�f#���",�s�&]��§ZsH8�/���g����*�?
��_�gs�u�ԋ����)KP/f�/�^Zp�$���k6s��ٰ�!N�~y���&�:={�Q+ds�vh��IEB���|@��ҳ����)���'�ؗ�,$�b���h8�H�8�8�������p<\����7<�P�t�A���﷬ֻb���F�L�>(	3(	J/-8
����3��_C�v���my--Z�p}��xebp��\���>�J���9��@���M~l�@P&B��؆s���`�s
m���AH���d(��RMOe�8��V�,5ꖭ���?��ʄj�L�O��\���3��!�Jhx�J�*丽�����Q����������/�+�����4����:�zXL�eC�KkaE�G�f!Q�EyE:�Eh���!�c^��@���VD��p�b�OqK8�܏'�``���ٖ�,���2�ּ���$��$����q���K.�Y��zk-�	q��&�ۚZ���4ߛTk��z]��/&}���%F�^�6�4���?�
4����I7�A��1�E���s�F.� Q��$� �+ݟsj9�����w��9֏'Arw��u�]/�n�n4�n�~�FҬ|�HRz�AѰ�R�`v���J@-�\l�;�,�GL���z�S���a�k�LIJ0�֠�iu����j��GK�(�i9����ii�0y�$���q$� *`��Hhfa�� L+���s��[��]'#�&6��J�)Lf҄��T�PRz�����'gg�	|�I��a봫��j�Q1��[׋ �{����Lo��l.�<��+n��	]���0-�s���`�s
��KA1*\2��s(
�}FS��&�� �Wi�b<��'�+�~�h�*=񲮏ߍ�������C�y{�����p�xlUi���dC�,Q�����"��*t�'�5���EXN�͛���.s���ѩ[�/C�nE�B�B�3�����"\$�/�Bdu��RG`������!E���0iA�چu	�����"�T���p*v��~Ư#qV;��bE�a���n۪�m�E����4��ĵ�A1����l�~g9\�U���׺�-xZ���Hu��*���IҐl�!/�F2�\�� �a�7��4tV0�L�`��'-xk�U�<oP�s� &�&�%��pq!����@�C��TW��;�/�.i�Z�q4Jzs�]�!�\m��b���T��2P�*U#�[���>�"��a��l�!�^��@��!�H�@�>�B����(�����Aq^�)�և�t�|*�}WL%��6S9���T�|V�+x\�U���4�#{����]:޵m+�Z�g�㌶���x���26gX[��q�;\���k�7���[����ǧ�i���+$�^ �^x�M�q�b��Xн�q��S�ĉ~ݿ���kc��%i�ܐ���͛�T�&!��܅Yᚻ��҂Kc�v;��%;�pE�>��-_V<��.�ekglM�ڏ��R��`��Oc��U?�.�Z~?�b�^��B�ٸBR/���6T�װU6��BgZ��r$N&�3��o(�=ð<U��"������ ;�J�?l�N�)����<ZA�S	����4}�}�恸߮��+]������y�����p�3��l�pUS��g���r���hnX�7�0�-�0	ߑ���wm&��$P�>�QЩ��8N��n2b��C�[)��,ܓ`���wټ�%9�f2I���KR(����y��a�s�EW�ƌ�G�Y8;_��"fm�э:t	�!�#N�V٘+o.m��!����_�t�����a:k� I��"��8LgM���,�B���I��d��`+�_KQ�1NJ��� �g��:I⽙K/!� �]�A����K�x���OV�ĖRw�SNk�����&@��@�aTG3[�U�i�*D�7��t2�4�:�d%�֮H�:��D��P!��[�x@�f��G�(EQ8t>50~ �����"���5�3�替)�.��-��������P�us>/�i����m�_a�����eA9��ʗka�.SX���v?Ï�q&����y��u�1�:�O���	��� ����B20���3���	    �>A������j*<LW7����-��ꎊ�}M�~(�.I>m��I��ϋ�H�uQIJo�PT<Ԍ����Δ��5���	ڪ�&�?�8���n���^�A�.�ڜo��;�.�fF���OE��n�$�\�l�!��»�r�w����+���k!K2�P���o���:�W|����\ǯ����Q��v�0�~wٻ��y�M.��^�������\�P��T$S-#�j��Yi�-U�d΍)���7s:ƒ�^y��5����13��Aa���3$c��ph	�
��s���0o�I�c��Zs�>�ORL���.�/j%��K��S��58e0����T�Fv�j�Ȟ�*w�hCE�W�-_�O�ι*���"�2��|�*HwDpn�d�P�����B��:��)$�bl��hc,�(������I�(�ē���⺁�׶M8�r��LG�5}]�"�$�>�&�~��ݥ,��X��6�i�
����surSӑ;�˛*{�B��$6z{]�5e��l���MvT�W?>-���w��ʦ̩0d("���;��	s7G�E���o`<L'�ј�)ۊ�7�TA3���"����{��H-���f3���&RBif�B((�jP$�9�w�f�#N�\c�-&��ej6�[~!�E�*��#��������ʨ�p�5��/���q�L�q��$��.BB�MQ0�	�Q�?�q��vr���+���WS��Qd�R���L	?�<�$|�JOE�j�	㑣�mR�m'D��x�	�d?Xj�v�&V ��'ww�5n��&��DmZ>���]e�U?��N���f%���1�EHH�p`�d�$q�q�:'`X�R��p;��_G�]-n�$+;�T�vA�+����-�.���D'�P�u1|�b5(
bݝ�Z��]�v�٠�����7��w����U:�]���EK?���Ի\��^Ǵ�?���
#(�j�x!)�\��4M�4�T�����C
!����p�ޭ�ց�Zl���Q�Wp�k�0�H�"��R�HR��ܥY.�]P�ՠ��K�Z8{F4��X�.́/�1�X=�|����z<����z�5ӿ�G[t���M	F�W���~�q�����_r�3Q��8�&��e�8Ǔ�ZaK��czw���ڒoT�����$'3_Huκ2�?/4���k����^��+sۘ��4�|k�5h#�IY�=�|fq��^���u�=�?"
Cd`�@s`��f�jm���D�8Mr(��;�p����ꂧj�_U�Σ�I��Kw���u�\|���aR��T�.̠`$(����K�`��+���f���)���/��9�^��b� Nw�4�rl]�X@���J-�|����17���PJ6�P�{��w�ݵ�}A$_���'�F���3�j`�s��G�:���x��؟_V3��Yrw�3O����҂�`�8���3�7F���U+�A�����b+��K�jo�b-C7�6֖��|��vk�kSR+?o�@o�3��`t�2PdX�a��$�QI'y�(�em[�t��I��H�i��_��C?M����ڛS�ύ9gm���һ�ػ�gv'��X��k_�)ǋ����p*�l�G�ᆈ�V��{�s^�We.K�:�j�XU���a1N��@%f����"��4=d�0�r���q�m�u�2�௯؆wP�������?�K-��FS�bR��0�Ҭu1|^zӂK����`7�ϭ��t���T�j�ݟ;�mP嗃ѱ��1E�0g�����1+���ܸ?>��Wxn�%�)/���1�EH�)&��!p�eH��:0�04���l�+�V��b[���z�H��v��RK�0e7���j�od0�!)}��]�,NKvy�b�N��*����H�|R�޹Zٴ7�I��-�C7dCY!�f�����
��W$AV���P��D��1�EX�0
�k�PA8�X�%*U�5\�N�����
�^�<�R��&S��)�O}���B���U�C�Y�\�P�������F8��m����ș�+��SnMO��l"�cE��U��,�ޟ�T�S6Đ4��.BC���P;4�Sp��C�$�2�
)Fi�=A�D��H8;��WFZ�9��,���~�z�����;�nJ�,�>�+һt/�_e����g���Y₠�;���k���"	gI䯂&�G_��`"���B�����wצP��=eh��~(D&��H2y@��������䁳�Q���I�v�P-�r�2��6��|&���4��y�Ż�5nٛ9"c���]̦��u�2�+�ᵁ��ƩOoܸk��Ac�����ͦ��Ec��9*���N�\�ec
ɻ�"��p7��ݛ'(9&�gK&�ƅ���_[ˌ�L^��x&�^�{F��K	?�ݥ��X��^E#7��#%Ew�Ԩ煞	��:[ulWb2ezf���xO���&�5]:��I*P��@�4G�F��1�EX6p�i�I�h�ʌI�"qO�\M����Olǉ�q~���Hw��9��l��&Z�ҬS�]P���VCy��]�^jb�<60�Q-�A%'�e�k��f�7꼠�]iόz��m;�5�K��rw�X��!P���C�0��6���!�/�b?��H�$�.O¼�0�ڶ��;Ő�һ(~��C�pe�>��HV�M��d��d������$� I)��,�̼
�K7����Uu17V~��dO�=�`MdtX�+wlP�9C�u�U��yo�-�L������PQP\��$WcB�*��)�r�"h
�8�D���F���
���V�LI8��n)��p���G�v�����N����Ĵ�3C1�g�(F�қ&1[*��b��9R�ҍہ��2�����RN[��\�*��Y|�c���Q���_�I��}�tc���)�A�$f�~bm*�ͅ#[��N�����0���N���J�m9��Ie_w�v��o��dL�>��dvROKoP䪁��������l����ėm�ET��hwdg���k�Z	�}am�3:-�)7%'�@��/���'�>�?�8�p������ks�
��q`���v�B0�bR��pYZ	�!i��lE��ܞi( �Ԯ��P|�cܱ�tx�S��lg����қ����\���XS]dx
�/��B�w��6`ˋ���z�Xi�j�}��������Vi��򇓉����C�
dcɿ�"��,TD�c���P�L!J`)gF�YƖf:��`o���?�m黫����bʋ�%��	�#��祗\�h��%�m����+4s����tu�j�D���]yr}��w�s�:�6�F�Nۃ�4�y~n�X�J%��8L1VH��-�<"� ��H�����~�zI�&������ ���W3�� i�i*��N*��曽$���ѻ,�y��N�s�:�+k�q;}��r�?o��݈�G�R��P�ۼT�~�0������δ!�#�F*¼�˳y�9�B2/Ʒ��6S�G��|*4\��Gch�:T0 ��j�>@��\�0-����٬��f:��S���
��Y_��ǆ5��6����ꎗ�����Bu�]ۍ�$o-gT�+As��k��l��1��S�v����E�~~���l!�����.�A���cC��#���k(��,u{6�6��U ��'Y�ɲWQE��=v�Kݠ��Lݡ$d���f��	J/-(�]Z��W����χ��|tfղ�<˹��*�aԦ�a���TNZ螱_��U�Z~��"�5w p"���.$�b��0hC�ߡP��p0�RN�t��M9<�=���~�e�(����[fviԇ���~��wi�.|�Zu^��;2v��a�U�#�Zn.썰��$r�+;_��v��{4�m���Ml��V�����V �&����a&Ɛ<��.�����# �q�a?�.��Gۤ���T쿺e��4W t�n¡J�~o֒�K�>��2�	JO%(���#��p���v�ޖ��ղOMlj���h���Dz̚_��ϕ�#L̫AU�m�݉U��$��0ӟr@�"�;��    ���(�$9����d��p�mj�	8U����U<�U�O��6k硗J��4�ʶN�cN���HRzӄ�#�V��m�=~^?*��^��~��S����L��@��jٜ�*�~{J\����6��W;�DO.P"��A:Ɂ��1�E舓���G�ʄV~�#�ahj��PpuC�z��8γg�3
�m3����w��tR�C�ř�軤+B���zt��1+n�x�F^�2�y�6��7����Y9ߦ�A���L��ڵ�l[���<��a��0#&r@�$b�v"mf��qN�� ��a7ղav/�YpL�@�zRd�U�6�k�ܒ�`�+�%{�e�ޟ�^:p��j:�/�-R�\c�SH�Z��z�u�K{qh0�ua�砲�r��\7u튬��Y]�y�g����*$�^�!�;�!��a��>�4Bs$�ڐk�.��_pG7�쮻�ߦ����,LOR1K��E��B!#A�C��M�k���꟏��\��~��{MG�l�K�O,;�ذ�-޵<�Dc5��w[��,\�}H�
�Ɯ9$+c��2���8(8ɀ�r?45��.u��[0.�����۽r]=Q?{:@$�V�\#�T��T�BB���
����X	����]��y<7>���t|i�冲�ZN;���j窍ln��!��r��'�0��|�9�Ǭd�@�k� L�r���q.BA��z�� �2��/�
����ׁp�̿����)
߼�H9uQ�f8uS��%�N.�Y���X	��{�x�4���LTד`��+~Y����l3#�ҥ�����{����?֮�Yu&��l?!ov��޳!��Cd��OI�bd�bb��_+ɼ\�s�*����r�ȭ*��&6�db`�dr�d��",�p3�1��?�6d�d61Nx7����^?�B������X/E��)���4��YD�%��"W��M���=n�ʦY7=�/�½~����+Wh���5Qm*��u�^+��P#����@��	��6΁���x�N��;r0GE`�	?�g,0`��AÞ�(��v��ɘ��-t���$��$S���^@����q�]	�s�=3�?np��=Nz����2�WUf��s�`��:��;ͳ��L�w�����f�V�(�0wx�C���um���!88`X��!	�B�d̦����(�ÿ2����3�Q>�&I��&�Ǉ�">$���Խ����X��lmRi��ִ�f榵�̚��0��;C�vF�'�0C�gz����?&1ȣ��``���(C2�w&m��H!�#8�`�oQ��("�7E]�k�7�y�⫶��xͱZ*z�n3<L
?c��4+t	J/5���%��֦gȴo�N�̫_���[PE�z�,�OM�Q��թŏ��Xg�;�����r�	�+gI��EH�)�Hp,|y��:�0�Lp�+ B��������DQ^�~�$���%闔}�/fp/|\zӁ��Ѿ�W�i��<�.vU�����ud"��v��������;�u�4�'���Ek��6\�����<�g�
I�'�E�ǄT f/R$N�(ː��&�ɥ6bp�:Ʊ�xD�������NcHnVF*��^F"͛$�F���>.=5�H7�����ڟ�5U���ZJ�ܢ��fř�V�[O�<f��E[�Ok�Lq�Z�O^-慄/j��F�t/h���:��b�RL�ohֱJ�h�?M�v3�/������\���$�é�`R���Y��H�kͶ�=u�8���ATxZ7T�/O����MX �7<+C��/m��LV�Dtl��U�	�1�f��F���p���H���H�`H����rÓ�_���~���_x0���+��p������zZL%q}H>3��G{�dW����7{�\)���C�����۞��`ƞ�$7d�NQ5Y��f�fV���&J�������ѻP.p��;TM6���{�[�x@' �:)�c��,��x� &��?�5Ѽ���B��s��-\cWX�g�/y���L'/$L��2>�Ha�?����J��pEM�:�
����2b]�I~�ްc��Dg��D�oMd���͚����O.�����G~����0���Vg����E����QVm���:Y��d�6yn�*����i�G'>�W��/�SM�?�·)��1g��w5��yٮ��h�n����@��+��%#g�w�ڨ�VLj��W[�o殻������ۺZ����V �0����B����/��ph�%\$9�`X�=a��f�LFgZa@U��m���R�A�����L�1e:I��|p�����ޕ��j��X�Zk���/�J�^��]��Ԫ�S�Nӫ�h�F/6^�YOUN������O��D�c`h��M6��|�_��@��a\
���~X%��K�A�S��@:,Fy���EY����O=Iϔ�$=3?����>��·����κx����q\[�m�FYr��������<h��:�%<�Lf��R��aa4��M�@BX���=d#������u����P��	��P+2�&�9o�6�_{�&����> ������~��f:%��n:+1)M$&�����PPzӃkF<<T[�+J܅J�o���N�˷��N���]���[i�#�S?̦��Zu��^��Ț��H+P�CU���3$_��"��2Bp<�P����!F�d��^����/,N�M��/��N���^�ĚJ3��P�k��f��C�G~\�}_�̴lY��x~����qS����Z�(du�/3���m�w�oʮ�#@�8���BQ���)i3P�+4E�w�X~� N3���o�}=G�,���g%1�ﳭ:ߋV^�i6~ZO2-Oή�L	���>�zБ>A�5}��-�d��L_�~�ۿV��8ȼڰ�������Г��Χ�Uj�f{��'8BƠ�,+3�d��"��@��K�8�)I�R���| 6�/(�:�'�:١^:��g1�y�$�&en���ҟ
�L3[<�!��<GY��X����@F�M9�v�g��7m�>��ҽ�m��6d���O�1
4���;�Tg�
ɻ�E�6N�*`P
�)��o��!T�lC�M��B��N��ܯ/�͑Fj�{��Z��Ā�P���E��S�y,�.��å3�HON�[J�˦�2ў�����̖�V��W�	W8�,��R���Ҝ��N�n�D�������A�yT�ޯ�.�ǐ
��Q.,��Cp�G&�u�����tK�����]���ޛ�$���>]�,�x���S�n���Q��&��3oLh��V7�>T�*����wlt&Gʔ�Qkp�b��n��[�V���s0�Q٨B��o�m�A�C�E�?�9����29�l"����������ҿ;`�j֓\��1�g�1z^ D�^���W*攢���O(E��[�-�]�J?�+�v~m�vG=��u�Ю~��N[n����"7�1$,�.��7$'_��$�fY��(���i� "�"(M�'s l׳��\Q���/zxU�����k'�X3��a7���~&AD�$�HPzӃk%R�a'�K���ӹr[M�k�Gu���8؁}:K��pwޙ�s�2G��۠���~쵦��D��Å(�Zze�����b���	�&Q�"`]`�X��TU on�n�v�6������C3��w�I&e�� >s�7x\zӁk����j��:����k�/��(�YrH-ر��{���>����9�"�f۳�m�Ĳ}1 a����F��/��0�8���аâ��
$�	p�Œ}=/�U�]��߾�[�~�O D���H3ſ���>$���2���ǥ�\7��U�]4V�"#��˘Xq�3;�/N�Ecd,�㡞2����v��n�^	���b�_<�D�T!�����6�C�}tx_H�г�q
�ySM\�)�-[uC�8��g�.`���r���dއ�$�R����i�ME���1�E�+���H��5-O�pf�S�WښP�����Uj�    5��r��p2C(6��O���a@%�e����E8�b�DdX���U��8�K�{�u� ���?��J�2�硛^?L�W8��9���қ&%�����~�Eʼ��~�F4�z�-���~�&�de[��;�GޢkW��^���mzȯPo��@���ˆ��/܋P2tN�R����l��uQ�8KR�:8�[��ʏ�U~ ��>���i5Iƴ��D/g01z��@�F}��fk�u�����^�*�w3s,��Dk�w�U��ϯ�vk�t� ��Mn�+�Q��@�s2���/���%i��9r$A�8I@�F���l2v3WMA����c�
���i`Q�r*~��3�PN�3$��22�9���bI�]���җe�hK�̞\�,����t�A���9��U[��qwe�=f~�ymͰj������ ��S|���&sH^��/�K�Mp0�l�fC3�1E
���i�[�# �2�k�&�IR��^��I�#a�祗\��iٻY�Y~Ej.g��;YN˸v��IqU�I�wp�n�&�����v���)�Y��c��{��ǻ�`��l`������䋴IjQ����_�]��=�/��:/�6o���L�R��.a��9��T���l*t�~FCiV�0|^zӂ�,C��Z����|8�Q-7�n�VO�:a���p�D������V"Z�+3�\S���.C/B����C���u��B��`�F	e�g��$��6yH�L�?�k�YQx��w��6T4y��
�<TS�O˩�bZ�yT��Yg�HPzW��l��ҧ�Ƥ�w5C���I.kz�$v�)a��p��p�>']T{9\�C�|�6'S���s��sc<H����!	�B�!�6�k��,C�8t/X`�&�PB:�ձ�}`���'-X�����ߖǧ~F����ؔ<��d&{ł҇&\
�ʛјH�Ԧ\����ݩ�ry|ia7t�7�W�g��:+u�8M_&��h1�#S�'.�ݘSS��W�9�C2�fmf�7�24J�$	�g8�`R�^�m��~������5��j�Y+e*����JXN�~e�?3��d��E�҇&\�nXo���kI�y�!2����_�7~����1�+�i��6�9�W���ݽH�~�t��2��
:oHN��/�I�Mr1C��]��s$�rINVG,�ʾn{�(Q�7_�E����I�x��N��S�ʜ�$���:^>D��>MǕ�Uv�)�T�vj�ڕ�s���I���kk=���B��?#�f�kz���p�ߢ�@��%�Y:�) I���4��� ���S
c�K�)A9�K%��+�������Q�&Ѽ��j�"���h��*�L���h��	�g��P����y�7�So�,(Gm�z���j;-_�S_�/��F�;��[�!q�]�`��K�u��]��+6��wn�@�'|�4
u�̆�~��N��;�"�/��� $��F�v��WU���ek�<��GL�k��C/����$�䟍�Ƞ㟨����ڀ�VBs�}�h�]��_��Ř�6���׾���ro5��`bJ��ќy'��i�cH�v�l�!9��'�6C��9�,A�|�2,=L�����c��82����ֶ$VJ ?m�b�i�g�!ϊD>D��*\�~��mD�O��N���л�_�޳n�٭Q�P�ѭ��ԝ/(�̼K/PjS�*�����p�3��$��"d$�J�
�ƁM�LF�hXK��m��Cg��(�Bึ��jf86��9VL��oFS+cB�7`e�҉��^JP\��E���|�>���ղ0cG��l���g�ǆ�NwTw�-�p�a��@Skj�˟������a��lt!����6IB���:V��Y�rg`���R�<!��jX�A`�S�κ���k"��S�f1�P'd�r�P��LG��Sn�?��Ԅ�;��կ2r]��kj�u�fw���V���C]��MmJMV��>j��{5�.�@������9�B��r�E)d0qp�bp���ً8��T˜��x:��`���?�16FZI��[L�/)��_,��_,(=��*I�l��F�4@��h�6���_V��El�jO�5d@_�.S���:#f�;W�1�(%���\�&~�0mrr�����"��ao��$�p�9����z�K���*q�&^�m���cݱV�&�L	?��D�Ƃ�K���u���
;�u-��o�j�$�tF_��rIW�#D� ��:k���3������?�d�w
�P��9�BQ���)�0C�h��?�����b�TkU��G��[������\�t԰��[�H/I��I��$|H3X����zP,�K}��giV?��Q7�Վ_�.B=8�S°��]��]��hA6O֕�q���ӓB��B�@D;F��/bH��.BC������	�FY�!k�@�`��g����*����Q��{��X)���n1�ʝ~�r�ҬT��y�M���z�5���;�3l�6�m��M���,��_�'�����������]kOD�/6��.���@q� �t�t!����6���	�)
�/r�I�K;�C˴-q?pXL�òm��G��*��w��˽�4q��3��BA�M��v�z�Z�+��l���ꀄ��'��2��.*n�q����VS����Yv�*6{��A��?c uٜ0$	_H!!�&q��f��I�H�4�	���=��Q��h����ϫfò�ʷ6�$?M&i��~�0g�0����nN�H��K��j.�uQ����F��� �|�"�W�~�R�.:<���mX�ΚZU&裐���c`��r ����"4�,$�0����9�p$�1�A��逧���]�^�;�MY
��ߎ��Ԧ�i8�-�ŉQ�<kk�%�7M(B��h)28��ҽ�bZ���[YjM1h/}�X����˵>�4Iފ+w�yۣ�k�oΒZ�Q�!`5�hC2�{F2��P�$h�N|���5xA�@a�[���g��u��˳�|�H5-|�MG?e�h�_�W*Z
JO-(
��'���T�r{�[�x����b.u�4q���i)9=�~5��^e�"U�Y����-�̏V_~�F����q���$��"$���CB�0����+=�K���;�y�e�V��*��9E���AGZI~�Lr0-�`�8����Sn��K�b�]{2�+׵p�l/~���&�]�:6�Pzb�{b��9t��2NTp����AA-��(C1��ߙi34Y�_��Om ���尯�փ}M�]7�8���.��z��	�J���Rd�4�bcZ�IǇ<��Q�
�<O���М�����]���V~�iB]���n:�q��������lk�p�l>��wD,���=��5$_��#�f0��D
#8�aX��	�l��Z��7��z8�]��Z−�
jX���.����D|��JAL
SÁ4+�0|^zӂ����f�I:vM���|0�}��Uk���%�!x�Q�-��J{�:R'F��uC�W�����ｙ00}�r0����"<���B�4
=�
�(�c��sK��s�)���w���|uXb��m��^�*�C�y��Y���^
p�~\Hڌ��^�j�4;��jy��^<ͥ�m4mofuqXY��}Rc*��S�u��8�[�~���x�05}9�B��l҅�"�!p���W�ll?����Å���~���G�����Q����+�Iw>ɻ�Iꥄ���fP�OT�S����8�s�ٗm���dz{� �r�t�ue=Ø��2���F�*N�Ƶ��⹛CO��C�j�{��I,|A]���_4̀��0�$N�'[�K�4�L�������������1��2�o
�'|��+&����$c��s2�C�A�?Q�
EH[�#�)��ٮ�mmmR�̏���<bx��;��:-Ig����Eo]VMtI9|*��,?��(��x�0�r6ؐ�|�^��@��a|#)Cx�BBXR�]u]����Y�    �HM}�mx�%��n2IĤ쳬3>.��������&Mv��n�=3���U]�^��H�5GvҡP�v~���-��'�V���_i�~�_��i���lh�������1�>/
��
�P��(,�i�5����~���L��<S��������SK��Ԃ�~.��4k5�%�����`4	:�npƶ�y�q��,4!��m.�>m�c��]�T��U��"r��]]��2-,0���i�4$_�!#Ц	�#"M��Mx��Bp.<�&{�[�����-��b�n��~MW�s�%p�TK1i6��,�g3��l��M��u�>i�$����lkZv��vs1��M��!~���;k0�2F��Fl�]|w��F~(�!C<��9lHB�P/BH��Ae;�������)B�arc2`c�aˮ�h�����5�F*N�n.�I
?�4�4+P	J/5(�9�6l�W��ϛ�z�1ϑ�BG0,uwj��˪����������i@N>-Z��痆����dcɿ�E��1� 6�C��U
�P�����\�z���m[���]�,���~h%Y�0��a�81��ٯ=5�>���4��(�z7��糬��:5e�Z��X{�&Ԡnu��C݃5�%Z�b��`�r��C~�:�}�O���p���$��"d�8LS&�!X��I>��B� S��za���wT=�&�\���Ћ���8�M���n��IY�yg(� b,(=��X�����6v�2?1J�/7��B���n�v�*}���wk���T��\g�#�S`�wz
��F��/���h�0�I�*l����rΦF?ZgE��c����VMA=�z���
���§��*�!I�jEY�_$(=t�H�v��ˍX�v��g�;Y��l^��-?]��5�ZS<n���j{0W����/*#�u�����ߧ�?�9�g
I��EH�I�1a8��0��wLh%���L����x&���U�X�������k����(q}|μ9>��4��j�,'7�zl��l'��y�Zve_��l#�3jH��Mпˆy����(S;�q+��/���=	��,����|�6N����:�14qB#Gѩm�7U�-GP��qw�v�`�����)���O���7-��|#y��	J�Pldf�xD6t�9o��a�nV-7'l�9����׈�Si�jc�Jk�Xp=
�/�q[WI�#���`P�ns��d��"d���F>Ar��'4Nt�X�}6x0����E��6;�Ky�/�)��S���y��^*P�So���	Mg�8_�yt�ⴼ�*X�>�i�9
���^��n�֫�:_��a������s����z���9�BR�p�mn!B�AI��F�7��dx�f����	o�N��0��zm�_�2zI&�&Y�%O�ds�=>$�wU(J"k�K�]�Tg#O�]u�����J��SA��ԡ��ZU����١�H�M��V��F���1"03ns�����"����"0°�<���
��%�3�+o���ɀjF��X��p����}�&I����d�812�gP�!)�iB1���� �s�g(����nQ�˕խ�M�^�;G���㙵���hxPmC�h'�O�~�(M�,��!���#�6Fø*����b�����?�c8-S�O=ս[��hق"��Rw��E򡙤��$S�Ϟr�4����қ�U���5X���>��G��gr��׶3�f�{&�w�9�}�<O�ɠ���#���	���Wy�_�� *X�1$_X�a�aF��I���|��h��4l�X���A����	'�}�K�t��{3�$_B�A�H�A��y�E<�ܐ�Ԛ1nz�jMĴ0�I��`�׭�jlo�Ʉ��:<ݤ���������z�D���*$�^�!^ؗ�1���(߫�A0� �dBC�u��sQ	5_˟r<�w�)%)��R"i��	~�Tu�<o�q'l'��m,e�$��۠Ѹ�ΗL�G���b{���۰$swf�U�2���I��]�n!1L"C6�P$|G�wF�sU�qI,��@B�K�x�Xȇ3���Lu�v5=����]�<TS��O˩caZ�y,��Y��XRzӄ��m�iݤ)bY�@��h��������H�T*^M'�Y�v�]��C��Y�,��s�S`Y�����6$#_�a$І�	4�p�J��Hc�I���Q=Z��e�o;��`nT��?{���4|��J5L
?sciV�a,)=��xx�/�m�+gKr��.��]��[�����N��z�u�]e��]��܉;�);�u~��M)��"�0cH��.�C��`c��;O�>?L�a�f�T�|���6 E�;+������5�F)�J?l�·)��1gcI�ED��]*�-��\�9Pd�Ѥ��P�B0�%�������;���4�RL�"��k8:��Ek�c��MȐD|�]��@|-"2(G`�3�P�I5�Y�e�۶j�NF)�דb�����$���z�P�A��y�W�RP=e�_맍=eWĥ�
�r���4n�i:����.9�Z�:A�>���m��i�?����2:%����Ɂ��/��Ph�0�����<�`?��d��8*y�<���������]�s1����PLR��j��)�g�P�A��y�M���(vv�NgCW�x�:�i�mۊ�#DZ%5��xl�T���4ц��x��J�����"sq���0$_Pa!�;A���1�&P�Wa4��,�~񺾯�G���uUS�O<�隨T�&�M%8|XN�8���i�8+�!��^�pC{j��=�R�}���<m�=��o��9o>�FSk�a������;d��z'�5��Q}#��/���
�u΁����N�H����`$M�l���#�`X*�k��a*>�'Y���ޢ�_2^#�$_���|�/ep/|\zj@�nNU�����^p�.���2<�e|x�z+i.*~���Y��X�5�6.�!W7*���4ȏ*z3į&�+SH޽�-�;�M�0�	� v%�wLX���ןj�i9��������E^<$�o�6����8%M����8��^�pàz�"l�tj.��{�%>�˂i�f�~�у��nD��#ZG2{�4�~���u�{�W�3��q�3!����"4�̽Ix�'�1�n	�����,�o�G�p����o�p��$᛽$�D��Cf����ԁ+Dn��I'k�&����n��iy��F2��h1ݮ;D����	�ڐ�Kn��r���=�Gۮ"M��3d"UH��-¼0G��Y38����FX�_,U	�
����w�g�:\�x��֑V�zo��K����T��y�E����������EK��p�*~�
H�\��:7֦
�^���D���	�*')��߽[����E:��o�苔+$�^��Цa��28	<%p6��a�)�=�7Uq?6�����gK�p�5ģ��a	���?�T���T�kZ���ɳ�\#A�]����v���vg���oU���Lu��]�}���4�66����q=�������n5rJ��`i�9pCR�)�i�B�Yfp�gC1�����j�Ԍ�tg�.9���R�f�~��PJg0��L'1$��<��[�XPzӃ"a���f��o�p�+< �J����ϛ��O�7��/�ך�G�nu���o�F�[�V��!
�/�1$	_X�!�g�@АcH�`hx��CPp�H]ڵ=��}�z�q"�{P�c��L]#',��3�����#A�C��U�w*�\����%ܙѴ\'��	�Wdb!��{��v�!��ͻS�w�m6"f��(�/P�C��ܛd���w��d���0=�pf9�Q���!����Į�����[�,�ϫ�h�w��^'+�zh'i�0�de����p,�`�CRzӄ+�Z���r��p��ƥ�N���6��s��/�)ͥ��v&}Ʀ�I�m�r[T�����Ƙ�ن9�C��|R�a��N    �!H��(��]8� �Q���P��2��`?�TW��������rF���4?e	��eɱ��Ԃ�Eٝ����Έ{l�y�Զ;�r��ӑI��<��a�l�o;��ll�C�t��6������ܢتc `�C����E�ì4�����wa8�x�I�� D~_M��Ã��Y�[�_W�X5I�w�I&e�Eʡ0�����K	��f{0Џ����-���3թ`T��:G��6�v�.!5������4��	��G�v�w�˿:���1,L�0_H��.�A�	�J�!8e���Z8�fpOn�s��mڌ0��Y�],K���D�g�Iv�,L4��<���ݶ�ъZӱA-N�Zw1-k����Fk�j��xwX鬵�y���+�ZG���D�h.-�CH��8dH"��.BD�<�!"8��β��-��q���7ye߷��u�߸�g�a��ɥ𡗦��4S�#y&#I�M�Je9�j�x4=t.�n���s�Z6Z��t���ן��f�����f|7�����=K�����,p���CT� ��'�E���8
�&I��łS�d�h���Y6�p��w�EP��55l���V�M3�IXNu2�a��Q���RB��TU�����?��-q�{� g�r�Һ5�){9��U�:J�rH{8�+ù�˦6�M�Kv��;�b.t���!	���#�6�@eH�{I���V0����Tu@�P�`߶\WW�ë8@e�c���k�v:��n;fLJaF5s,E������x��-�3��=�&q�7���V�����>����1]��)&�Qϻ�Ģr��&~ɧ�����A��!fC���	��c�)&�Mr,C��D_�W�T�.
���<�{�����
���X7I�w�I"&e���0�����K	 �����ڄ��^G������my>m�r�����I��a��눗���f~X��=0�1�#c6��$|!]��@��`�(��0�!}��E����u��-QF���d�F:6I�H)Ž���>$���ܬ�/|\zj�m����	N�+i*�{_Ґu۞��YJ��" �nh�3T�������l{�VV˳w^w����\C:~�L�C6���{![�t@��`ɡ,���~J��('�T3���9*2�؊�5��f-I���B�2X>�u&��A��D�=�[�ٺ���/��K��/��L8�K_z�zu;`�/�x��N��:�8��?��@�!�u���)$�^���&	��!5Yd	H�$�jN�D*�F=�~^y��m���r_S�:z}�M��$��I7@��s������������8�w�K�r�~��wϚD��ح�8�4C�O±:YӃ�ӷ՜�yv��o����0D*�:bH��.BC��`h�q$Fа���W�7R��=�%~?�غ�³�! ��FNȷ���j*���r*�&-�̹��Y97����EH�$�˝מ�-�d�&�z4m�e�k^P�^���^�v��XM~��_��.8mHCʪ4O���s)B����l�!	�B�!Ê-�3 ��p$l�<�j����_/m�W�-�(��5~�[�`�v��$u��ٯO����Q"�U�F�KO(��a����pGr�9���L�6~w���Vg#(�+�'֧z�KҺH���z�)���;��W����{� �νH�$aB�4��t����a�!�=�e���WE��+<�E��,����+RM��l��I��t�H���XPzjA�P�3�к�B"ouT��xZn�WU��9X�ӂ�W����v�|�n�߭Lζ��c>��!a���0$	_H!!&�A-��U�0�8>�j��Tq�i���_hE�!���_
�b�T0��^*�~�#iV,0�^jp��GJK̝����"��lL��Iw�����*��м��֍]�v=kuqW�r�]6\>���h����(LC6��|�\��@��!̡���G_����;p߲j8��9�i�78��kŞI2�9j&y�a6�Ô�4�f�0�^jpsw欻�����-�@G�ԓ�F��Ƽ�R�͛ё�?"pL�c�N�p�ò:�o�Z������F:���������/���h�0S�pb�I��������d>o_'�*�4|\ۅ�_�Ԇz�|�7��|���3�+f�sE��S2FC�K������
�o�16g����jg֞�)q�ɺ����j������>��k��p+�9���O� 00����B2�sm�*��Peiت��1��I�x�^U�4��Pt�O�����׵0�L�h�̦C4	a"DK3�4����7�ۗ���\k�v^�=����/���p54twA���i��nQܖ������#6l�~[�����&�1�W��2$_pa"��H� 5��``�g"�sd��uܯ�®�h�-����l�1z�[jW���c�x���.��h3l��*+덆m�N�L_i����Z��em����#z����Z3��b��ѳ���SM-I���\C��|W:��u␬|A_��@��ڡY4<q�JA�7aR�]m_��3����0D[��c8RK9+/�)W�S�騄�,?%|^z�@q/0oD{�I��o���.��/��@Z+N��h����aDY�q0e�`R����FC��M����s0��l\�����܋�	�y`��{x��=�@���p&����C(բq�9+�0I��j���f�L���2S\�ǥ7(
*B�y�Y��DO�S#�O5�ܺ9�e�Z7����58)�r�#��ԁ���lˍ��G��C���lx!)�¹�6��ܝ��I�۟@S�J4��9G!��Y�m׷UYq��P�*����o��/�o%�2|��O$=!{j�CR�T��%j�	�Icƹ�뢿8�e��Co�$4�\�ΦlN3����$g0��V��?�(h� �0����C2�E�"����aȇ"I���_� S�{`]T�/�����P��MO���W̱V�^��f�Z/%MMkT3ݗ���R�+b��#�Y���Qv��i'iZ����Oбל�l{flz^}����*����d�g�۞�O��;��1PI6� C�v"��Rɡ	���G_���6/J����F��8��R_>T�,�4�daZ��W�9"/�V)����FGѷ�}��r�p���|�g��r�S��nc./ö��>_�j���g��;LM�ӭ��f�:nVb����$��"$�4sd�p6�:���%��
��o�e�7گ���t�Tï��$?l'�~֤��R�dEJ����W�7�L����-�.���i��ղ7o7��7}������E�ē[�8x�Z��ʥw��+��@GP`(̂��3$_��"�ơ:�qH��V�G_�Gb:�3�xAK�����I v�zx�����1a1�&f��_�d��Q�M��������[m�F�Vs͜��"QM�XO^o�p͌�bv��w1���k��Գ� ?��E���@�1iH6� /�F��Q�>���`GaK��W#�p4�鉦�W�.�%lx���?��<�˜��ŧn�Ę��:5f~"у)�H���!*}hC���S��������5�>��N��i׆�`,�ս7�(��]8u�Y�7�[_�{�g"C[��W�1<8LbN6�P�|'�����	��#��8��Y������t���PM~�������v����%/'�ME{�즢=	�g�G�lO>.���3�̓�v�FoJH��\nk�<\w��O,^tn,n_Q�]ih�f_���*v
da��	�F�0y99�Br�t�afĎ͢x�~[X}5'I.�c׼�1دypjt���GQW�o���N��DjI���L�/)��5
3�=/����7�����e��uyT��k��^U���~s�����ӱ�u0;�m�=�7�^�eU�F�s�}(�BG���I����/���h�c-��b������Ő$�J���`�ē�j�^�h��]�xj�b�I��c�>#��'���    ���
��yT��Q�����ȶ+Sr��Ksq>��t?�����Jb�ð�-UOE�ڸ�9e���h87Ɛ������/��p�
ӈ . Y�a(�$`�꣯��8�&k�L,���_����:����)%��i2Iƴ����!��⟨�Ԅ"�0����(|5�1kU]�͕\>��G
��I��y���zs��}��SV�<�A�]	�[~~����Q:Ɓ�ڜ3A�$��"D�
���X�	����@�YY�ű&��Aݷ=0��ѣx֭�����I��S�sJ��?G�:����X���ٍɮV�L�����m���:�j2Z��}������:�tH���/�����F�S�uK����0aH��.�B�M�S���Q�E�$�b�WKv���s�4������΢��cy6ļ�H1���I"����ˏ�s����ԃ�amq�t3Z}z���X�藙���������_��Qw�km��G�Mm���˕�
���b�k�w9c(���;#��o�������wUH���Ե/h��)x��GW�^���
�|H>C6@�����=�����;��� kߠ�I괌���T��5�U!����T�7k>?�u��Z�s��e���B�s0����"��,
s��"9v�|����KuY���Gu?�mM5_��=۪�}�����4�$`Z�!�3x���^�p�}��������z��4���r�L�A�s �c���kM���F�M��6\+�-��p�f�bLrNΐ\|^��@g!ڰ8JA�P_O"$��Lzak��LTË�g~��<�o>�C9��YN��	abA4�� v����ED��y*j��^9U�K��lvZ�d���DS���9����;��I5��7t�j�*��#;|��"��!��D��2�@�g)��(�'�Lxz�#@�7�U����s��+��t�T��|o��w|	a�/�f��E��S����zwF�;�C[�4=�/�gd��f3\{RϞL�V�^�,�6Ya�ٲ�i�ڛ�3�+���Fb `Z{�I��E�9"��hH���ve�����ҡ6�}óe�|B�n��c�T���d*^��}�
CaV�0|^z)�ejݹ"��	U�B��#�o��&��ȕr"j���B�+uQ��g�ҷ��Y����F���w~�S!x�T�:[H��@.�?���P�cX�C���I��Xp�M�
�>�upt_�+��FM���H1}&|M�?e��`Nc�XPzjAQE�;��k ���#GI���{�f��C���-,(Zj�����}[�g�p4z��I��t� �g�I��E(�9�<X�@)� I
>�BP�aS�}��E�=Q;UG�x���l>M;e=EȬ|�2�D+#A�m�Wq5��A����n�0�/��K�e���N,������AwJ�\~'37��xf�=�όu~��N��0��s`���;��S3��X���,A��g��X('�ޟ�����{�`���3㬋F��T��H3���I>����T�4�����R���dwZ���[��mi��{�\�&��Hw�5cZAg��N������NO?p�1�<l3?9�*��@�0��l�!y���U0}��q�aH@�yH��;uJl�w��y�f��9��ގ2����O�$?�&i��~֕�r֊>.}hA��b�g}1���y~��>�2>�,�������`������"�>�$U��=
��X"�O�R�
%B�Fa.�!����"4$��VP;5^3G���iH��z*���~ z��hb|��x��'(�j~����M�!~�N� �ĉ�P��~
J�P�\��别��L����B�Z�g���D�4����a7mkG�Ww�s_����w���t�7�c�%f�Jڐ�|�^��@���L!Q���y�4<#�$R�,fa���%*�+��5猷��M "�T �i7���|�p��1��KO(�����w��v����������=��5~#�uo����%�w�ޥY���!�cm���8�Ml�����'1�m9YH�� .�>�M���cI�䰰����E�&҇�e����QT[|Q�U��~ݬ;�7�Y{	q�v/{8�CRzӄKƶ��Q+MG��ۦZiR�j��[�Z�������wmd���ƹm�����E�2U�a~<G.�26Ff:}ܐ�|�^��@�J�C��O��:Y,0�*pf-�u=x��yh�=�4S��Ԣ��~.��8ke���ՠ��w:��h���F�R��N�y�q^���r{����N�"mE;��k#��hcK���pz��ձ��f:F��h�3������6�A���ї�~-��]xjo����z����_h�Ϟ}���- ��ė�t��,�}de���Ko:P�u}r^��q8��{_�R�jYuH�q��:���'I�P^�.٤=t����������6��6��g0���9�B��r��������u��D���T��@�	g����ʷ��94�0�Z����0�f-��󟩸:��s�j;j�sqtع�\^tp�44O&��n��[*�x�w����Zfc����Z\�e^*B�	�%fH*��.B�p�.�-��$,�H��I��y���,St>+���\�	��Z"�C�V�1�wI"��9�>|\zj@Q�2:3^�~X��ўm���O˭��n;c����z��f�J�i�4�[�=��Ʊ�,nO�a��i'%VH�=�-�<���yt��!tH#4�b�aࢭ���{��8�OH��Ԑ�w����,Q�
��#A�ž��f#]���n_U|���r�i�X�g�#k�o�����(��L����ڕYM5�����R�c�����P`ؗ	-$��aP&0�3 p��!bH#�1'�@ܯU]Wy#l��ȱ	�����¼�^�;�a7�!Iɓ.I��b�S�&�5�o�{p^�io4�.Q-�*7[h�`��j�|����'�9��̖��]�Ƥy:�3O����g����E	�i���l�
X�!`H#a� &����~��� �ǵz_�H5����w�%��̾t���Snԭ��Z��_lQ�Oؒ���\����K����R�glqU���h_�d{$l���Z����E�P���A4����/���hs0S�Y��	�:>� ʂ/��B�Tg���*�7����X3ɿw�I&e�5(����&|\zӁb���{�����Ř�Xm�]�lq=�ٲ��$ʾ}t����*ޱ�7����oiW�������T �0��ّ�хb�;̿30�&h�:(�����!d�#�s�ǰUk���`G�[ C�ρ����>�S���S�i�gz�1�Wl�����I��n=� ��fú(#T���_>l<3e+��"ls��%Fo�M�7���h���M��2�=>�d	T
X6ސ�|_��aO(('��Y��>Bb4G$��*Xh���w�n�����&%�H%6�YK�5$d�I�0+�!��Zps�.3�+Z0�h�>���Ve��u�2jj4{g������N�n�eӖ�1�g�9v�_���WOAq/WH� .�=�����bp�I?D	�p�$���J�T���x/&�Y($��a-I���s��4��OY�	���i5���z�{\s���N����5�*eI!bg��MF�ۜb���|�{�l.����j�TC� 0;r6��|�\��@�&aV�p�s�z:8� �1tr�Yò����2^�tK��YW����|%�������$)��V��JƂқ����z����x��B��>��r�8�����&bM��$�W��\�^_��Ԇ��L����Qz�¨fU����/��phsP~2��I�}6������g�.������b?���z�T����&�6��Z*h�n3�I
?�5�4+`KJO=��qM#zG��+Y�
m;mGryܘ_=fY=�5��Mn�YS̓k�ځ5h�Wc8sn�D~��@���9C��u�u	̵	~4��?�Y��'}�6�UQ�U7�qoϼ,̻ۢ��z���O�    ��״<��} 36���U�(�ߴa{��ɳk�>]*��Ӕ��Y�l>hL\oqX*CW���<gh� ݶ؂�O�7�G����1"0�8s����;�S2҆s�Y��X��!��"G3xr��ڂ��[�.�ϡSQ�י�3KR�#�T^��l*��S��� dYY�q��U�6��vC�]x���Aݟ��z�qW�+W�wS�ַ��P��D���i s�$�~��R�}H��I���ll!�����6���Ra�C�!�`���W��q�փ8�]�8�)�r�!_�ƚ�3���1)�<!�Ҭb����7^%8��C���D�g��b�|��c��l���3����������jV�ٶ�?��o$���9�\_�EP%���\*鵥N���>�d�b1�jzf[�8��Ew��̩��2��Eh�@Cm��C���u>�04d� ��/"��)��j���D��h(�{�7bf$�s��F���w�P�����)��n�w&}����f�Voesc�|�]���ƍ��n+��C�23��	�,�5Z=����EE P0^�C��um���9�E	���o�"`��S#TF�"�ʮ�G��3��8KO�X0ɾ�(F�H�A�HP�S�+=a:�!����7D���f��<��iGozG[O�ۨun�貱�|�T��ȫ���!,�W�z��)9�Br�p�m��&G�Ao�ʖY�%0,55�a�AT\m7U|�2d篟�I	b(�G�Ml"�T%�t*��yG�R�yKV8�OV�T������m�w��Z5�C-++�6k:ރ;��$:��V�*�z�
�~w�QݦХ�}�N���8L�^6��|S�;�63N��h, r��f'��W��貾Hu�>Y���]V�g��!̔�j��������h�3(^/����X��֧3ڙh�O��au}R��'���=����p{�-㔇7 �~���*ץԿ��T�ny,�� Ɵ��5$ߠ�#�jƓñt������!8sIb�S�]�VtW1E`��Y.��uk��ȘX6��y��^�W1�\J�Aѱ���M]�n�"�o��L�d�Y��m;b�r���3"ь7�K��U���xA�^%�쩀�A�L�Ɂ�����N�P�� >�\Ы� �[ڊ��c�]�1S*�nd����YFdB'	���C�$�K&������*��J/M("2�d�Cst����mNZ�Z�-;��<�&�/�b�=R�5Z�Z����H�������6���,��p !<�9 C�v"m
�+1���;�CH�C�������2-h �ۊ�~�i����4S��eS0��	�Y��z�C�lԼ�S{�x���T;ՉW��)�����+J�T.��x���ֈy�8��Ma��x���_$`H��P��1$�X�!��`hH���^E�Q���eL��?[�#1�K7�H/eM�VM�)iܦ��YFu$)������ٍ������t�Z�����j�V}⺑���6�ˑ���?��Q������wWy>?C[*��!D� N�90CR�w*��0�Q>A�2`�c?x9���.��4����Y�`j�d�g+�~O�������M%�~.�ʒM
���L��>��J�*�k���Yy`MǔMdV���k۹��c�m��.�N7��6���˩���9ƛ7�\]�Mh�@
D��i���o��h����a�P@޹�!�p)��R�> �F�������j��	Q���,����_�z��Vɽ���1�61�x?L�
��Υ���վ	�g[��p�i�oS\����/�Plo��E,Қ3z�0�l!����8�~,�H�$
>1C�f�T��@�d�'�pr>��o-�B�$�>K�.)KL��̋�����Oe��6g��ʾ:�"|�t:��6R��ˍ��ի>\L�p۹��lC���x�n�__�ַ?�L=&z�05�9��P/���ԋ��{��@�`ix��ŤZr�l%�^1wS]R���������	`)�6PLe�|��J�I
��6OiV��ST�S�k�mM���E�ؾ?�c�scRF��:ӝj�Z/��d���M�`7r��p����~Xa�~>�7�d"X�l��!��F���VD"�qXl�?�X�H~���U�����i�3����w�8gs|��a0%��Cq�q0�<�Y����J�j�qG$�s�4�|�����h��AP�N5���w���z��!�1�uV���(H��q&ΐ\|^��͢$������B��F�)��k$�uSVm��Uc(��j�����K1�h��)a����|��r�S	��Gi2�躼~,�J�x��+�`s%d�`O�3􁙏�tA���#]��S�֘h:6�L������M�Dp0�l|!9��)<xw0$	�EY�&�F���^�$龢�`;�+x�o{$�J20�f��ii��H^^�SRz+�En��){�O�����V>�e�KH�ɵ�]����>O4��������O���j{
}���ą�$D�JƐ<|�]��@�$��B�eHp|��4aq�ē��e�m�춺�1���ۀmv��������)9�v�FNI�fr(β�CA�C�^�Ծ�1�]ɔls+�����������]�F_l��j_�k�pv5��n���-�4�򓲥�k����a֐t|�^��@���#GpN2�����g`��8���[Z�1p�k8� 8	��T�JI
~���_B#�e0\-}h@�yt��X���<G^�]��B�*j2��0pN~b��\h#}4<Q��x� L�l5��]���C�DofzT���{a[�u�6��q��i6���e�`G��� �욊��k���5�|�ӄ�Y!��Y�Q*X�<��^:p��}wt=�4�^���8M�ۀ=O��1�u��n�_��ٝ���Ź��(�&��M����k2��'aBv��B�����j305�0̶�pxsC��M��5[�O�y�����`�J�쨔A�9�1�h*�0%�gF�|�H��4GQp؎4_��eB�� �ŗ��3T�n�Q�W�O��ܦ�t�v��E�N�zvB�{|I���a" 0(&f���7�E���1���؈r	o�`�S��5�+�ܵ#�������
�󝈑^*��c�T�BBO_�Y����[	����R��d��.��z�g��~~+K��]�[K�[�?vD��C�	�t�Hv��Gަ���+뿧b3���i�.$�(! ���$<C14�9���,��^hڂ))�d�ڂ�<�S��� �;��!��L���a|�$��_�:�d�?U���w�ھ��m�4u?�s~��\��Is�ng��윶���Yڬcr
�6�#s�G�q~za��I�L�kؐ�|�^��@��|}F2��co�`��(��a���+�,�,z��_�'y���©bJ?$�Cbp�w�!� ,��T���O��q�Ƿ��25�C��9*��u��c�z�&�T�7��FB�(�o�ޣL�kΐ\|^��@�r�T��Н����RC*Y�u�L��(��8�}��*UR���^3nH��Fwd��F�߫T��j���|2f{ujV�Mc6)�W��_�63��/��)�#�#em|ou�u	�"�����_O�l� �o��;$7�(�M��cP�$CaaNl�!�#(I�s��>7 �^������`�o�C�$!?VLR1!��0�e00�^z���������E�����+#`?o�GJ����f������-��R���ۭ�l�ɷ��V��{�(�z��9�Bq��߹j3̡�
���8�y\CSVKOP�	:5�t
����w����Z�`Jl�t4%%N�S��=���������^g0mM��Ɵ� ����"UF���GͶ������1wt�V���Qa9�*�
����{ Ae�d���7�E��1Ƃv�Q�<Aq���7|G ��S�e���_��O�$ck&���k�i��-(��g�M������t%�Gg�N�\}����c��"7�1&�Y��K��$�O��1X     ���ߞ#(f���7�E8�qj?k��y����.��$=[	��{��5�	��W��#ˡ�ʻ�4SD�/��bZ'c$Ϣc$)}h��� u�^$�1ϖ~Y��ϗ���?���U����8�wg�� y��c�~��U��ȏ�����2Ds��!	�F�!�6�i���)��"�dL�j)�k{���k�b��Ge�&i*�rc˥�S�x��S��}��^�p�a���S:)���q�Q�������ܭw���8�:�j����^�6�»�~�>:�|�0e7l.�Bg� ��>^H
�=!��M�d8ޭ�#,N&��b�� (a[�������\����3b���k��vl'�	�v(��m���K��<1lM��hr�;�`#r�k��ƈ���|P�Ӭ5k�c~ܮ����a2Z6Zͥɵs�_�W�������d#��?��p�P�����<�8T��\�c���n��7稿`?����P^�I6�WO�1-���3����Jpy_���*5��2@�3�\&��@��l�s�]���Mw���
ύx�S��!iԦ��o��{�/&Bʱ�5$ߘ�cPQM�ԉ�I�8���<�c�.W>kQ$]zv��{�퍺�C��C�Զ��njWL��ʁ0kO��u�f6֖�Wvu}��ҕo�ag;��m�s3�|����!aG�B��}�=�I��o�9F @���b�'Կ�0Ԧ�ԇ@Ʋ$	��@ 8�8�L}൓ �����*NdҔ�c�B��}�^-e��Eq�$�eY%���K�w�հu�;�����iy[j~���"���Y�襫-�6Kש)�"��vn�c#����W1�ݜf�x�
c�dc
ɻ7�Ex<#SŠ$G�8o���;���rL�V�]M�ݏl�='#�&�7�Ү�ĺiwM�	����~�?a�ELA�9�i�{���wYS��.����eծ[ϛ6ڭ�Y\��J��\{�ܚ�E�o��QB\�_6��|�_��@��:%2��(��[*B�,�,�+�	��m�m�@|͡w����)��Z���U���'j�y#A�S.���ÚG3r��=w��<͗�gі��0띹���:V�+�yw��5r7j��b~��}�
�Ҁl�!����2E@����_�*2��<�G�-#�����Ǩ���7�S=I���IF���V_�8�������Gtu�[=t»te��x���+j��;�\��w�M��0̵ϝt��pE��}jK�7ˏ��d�Dxp0��l�!��F�!������(Ia���2(�&���T쫰k�������e�;}}���4�-�daJ/���,|JJ/=(V��J/��u��q��%ٚ�٫��Qc�ۛ�ɭ����ۀ3r�4ƀ~=|]���_��EH0 �N�� C���t�3ȂcQ
�T���$$4��I�-�����rT2�]	���=筝rn'VO��3�q��,�vp�W��e7�z����z[O�k���2���7�7=n�x#���F�:ֆ_�m�0Mj*Nۍ|CZ����UҜ9-?�����6E��߰��oА��D�+gW��������+�v*I�L��炩T��,�
�r�B���mᎏGu�(��xp�ɦs����~8jM�Ƶ;���O���y��-ļ(�9.�w6�Ӽ/���}ʏ�-$���Ц���K14Nstm�h@�H�q�q����,�|~��y�選�i*@/Þ���aN��Ik�yC�5��^�P����{���W'zu8t6�ƭ,�fM޲�ay���5k�ՕGӃv��zs�߮�������m�R��(P�UوC��}Vm��C0� F���)�	�d�*��k
���%�'�JE��$��RI~^�/dP.�\z�E5v^-�T�� �����L,�Q�^W���f�T�Z����4.9��6��C�o��( ��4Tb6��T{�Y�j@;����jJ��������45C ^����M���I����t{/�$\\���u����T�X�n9=�<,����!-i���3��$c��QE�o���mY��M�,� -fSWi���79���^:�l�D!Y����6F�X�\  I�����R��h����i;�)CF��L	����X/I��(c�m�"A�O	�.�S���l�����������mrՙ���/^��3��c�w�5rE�q0�����&�+ҧ!z�P��lT!�������,�v���?��O��$�*��
'`�*�����N��)סVj��X1��%d�]/fm{���҂��z�ב�ےK^�{��h�';v�߬)�CT__�CtԩBo&PF���r�]������wf72��ǡ�$��B��r�sP/��C���(�p,�Rȋ�g����3�)x�gοhF9�����d�L��9�+�,��H�Y7�m��Y��ST�T�l�4���t�9������>cn�2'󓫍N)�1ǅ�/��V�ey�sZ]�y�뱘�T������;A#|�ꡲ��"�~�g����Gу4`��.I��d*�fn��v+��_�e�s�Y������צJ�n���&�ň�2h	JJP�md�ժe�ǁr��R˗�8����vx��8O)
�O��]�h��"��m_5eb(Z��_�@�� ����.$�0a ��B��\�g$��9�I|����vu׍L�(��,؂��'�䚴E�^*P����$�0+NI~�L�}�U��5��'���?��+��ʠ|���}�"��=��#O�Clu�6;#�����c��I��O|��AI�7�E��9�{xF'P���<��(
M�ɲ�]O7���w�m��6}"�H2�c�$���Լ@�A�HP�S�bݡsj��@��l��̫Ħ����^� >�75��n��hOfdS;ʛE�Ω���[����h])p,�^:���W�������.Q���eo��`L�����USqvuE:Z���\�=�o��j��n�8i��+�΁	Y������[	���ixZ�l�ޫUv/����ȗi��-nD�I��7e~Ї"f��=��,����E:jF(��M�<�!I�ƺ�v�`�;1
��'��Gc�`^y��UA�C��qm�����
���D_zI
�WM�0-��0g�0�\�i�����sA�����vWc�u���2%.]F���Hc5yr5��~u��V����RcD2W��r�@H8��:fc��7�Ex��G�O0F0�2I�� 4�g�TL��>kWl�2�/���O�Bj�\-�&��M0�f킡��V�����[ˠFl�0Z�v�G�ͭ����]F�o�8O�����V]-͙ʹCcN��fm�:��>��7�-�>1��~�v��~4I��V'���i�8�L -C1?����;i�7:����ʔII�y2F�
p�����{��AZ�������^O�[y%-j�L��{�d[�4piT���[C����^!��b\��G��	�"A�<�!)�ƽ%�6��1.I��!0���Y
���0m�
2����Zv<��k��P9���t:M!)M$)���@P�Ѓ��V��K���N/[�w���:�˺�5؉$�i�V�yC7�6�DnW�dun��:6��N���R�E�Aa06r6Ԑt|c^��@��a�88��CG�h�dQ�I�%O-G0e7UL�ݦ�Y����y�_�����J���*)i<���+���V��)��m�@U&�C��xoz1]�/�iMZ����;¦��*���Y�4�hώSbSo^����(E�D��0��l�!Y���+�6M�g$Y������6M1d�4j
���� ^�aĻ�k��TJ�0�d��)i���8������EC��ط8?�W*woτ����ݶ+\�0��q���R��ۊq�W;�֭��y+}��Pn_ ����!h�	1$�X�!��Aѐ����_��,N�q�U]0��n�Y���/������>�?��	_2eC��q#:�g�ѡ����DB���3o,��;~�ٓ˅��U�    ��S�ev'���΄�Ҵy�n���5������a~��]��� QN6ʐL|�]��@��cˡ��8�Q�|�9g�d��\S�i�+� tS��2������`�RM��K��z�xd/�!+�
J1M�_
�=<Z��n���JS����Y����8=1%v�P�h2��o�aE -�Cm��C��Ŭk�	uv���o䋐2H��`�{x���N�`��p*��������L�������,�ѫ=�I䩗�#�6�y|��n��&#I�S.�=���m�vur��nv�[�>])si(�:7d�MOl���󽽲Z*�F�V����#9?�\Ĝ�a��<��E�O��d�M0��,��Y�#�hЖ>�����`�k�w̠9)�fɖa���E�'D*K1COU|ސ����<����^��,�Hu�c������.g���j��XEVT'k���z��6k
i��k/�@)��1�4zHz�9P��@��HY��F��I�B����sA�ek��wy�����P!u�L9�tx�s��&&K6�0۲	$�?58�����'{^�vfX��/�r�h5z��U�k�kr��M�A\VǺl>�|����̱�.�@��5�C���um���A�����P�A��%횙pla�T�S�I8���zI~,�$`B�_$ˠ_$(�)�}����oI�K���[i���fM-���ZXO������cɍ;F�7�=[��rZN]�����-E/��^��,$��a�� z:p��@�&���$БJ��B�/�������LPܯ��Z�_5�UN���@��E��bzP\�-"��j�ˉ��O�妲q�Iݫj���k�������-��m����|r��6���"=�"(����p����"\��E����.r88�*�=A�즾����n��3c�n�r{��3b|�TX0%����Y��?Y�O�#ؤv:�p����b��Jrk����M������ϳ��^������e<��#f̗�r�b�A�h���@팙HC��y6m���.�ʑ��FAp�H��<#�O���z�-�MlpZt2�0��*���1�vj�̐�w����-2�b�p!B�b��~����b���.&ez<�5�lk2;�z��!̠G��b[z�yB߉m�����@Bc
c�d#��O�ge��R0u�&��G�q�ē�d�OYpv#��3��d�g��Q��9~.��8&�	c ��7�҇�/�?���fܪ�V7{P?�	�<<���ݯ�����)VKb��<��R��cr�[:M+?�Q,Е.B��I�Ȇ��o���X�mF��?y�E��=�� I�vc�:�X����Q���u�ϟr���œ�̒�+�2X���>U�x9�����`/����e*�e��*����6�1n�^pqjrV��z�[`��yv68U��2@��1�B¸�1����"��$Ĵ��4���S�^p��C��B�d�Tv]A�D��WL����V"�k�s�k&)NZ3�<۠	E��*q��Y�����Wmj�&j�s�5�u��t�O��z~�JUd�����E��ѥ��ǬH�@�_��L�!�����6��C�����F�ñT�D�L��U��MU��ֵ����_���4��e���eiy"�,�!3�,�b�P�\�1�F�ֺ�(ݶ~܌)����ɗ���~�պX0`�A�m�҃���X�k��쒫�,߬1
}�H8�l�l�!9��'�`���L\���3�C�4��A��T��V��n H��h]u��O���/��w|��:O&~B�D�!OU�f���른"ܨ��_�gƹ����w��z�͗kQA����m{mt���&뤴n+>1�91�de�߲N(�����aB�ٰCR�j�����$��P#�"�b)_dOp��;��}�����©i��B�$c�&��&f���*>%��\���4���TMw�'+�t�Nʋ[Gٮ]������<}Xz�@ܽ}d��H��]���9.f�0@�!�1����"<�8�E�4β����Q(C���/���\M�\�oBջ�ηh�K5I���I>f���2	J1M�YA��0CE���])~�[��KU]޿"���q��R��r��Vxv�:�ȶsP�m�Wɷl�ܑ&$�ŝ8)?�����6Ѻ��P�� %�b,��V{��Ʈ����+�L�%Mw�>�52�K��?MŪ��x�:�f�#I�E����Y���W&cM28ay��r�ۏ�fMjn6�`mo���+�mNV{���:0<���F�G(PP��L�!i�ƺ�$3���`,����&8��Q�K�5���#� ��+k�J09��k�?Ք���n��N
�ƄG�m.�>��h����t�g�2p櫶8�l'ed�W��@bMe�����2rP��-/U+-�ܛ���(ߊ���C8���l�!i�ƺICq(�3%��?tW�^��	`���d�u3�Ί�ϱ<[J��H�0�K�M|��ΜHJ��83{"��ފpa�=z_۞1�_=��'e��7{�cW�k���bʞ.��i��v�����6%���Y��C&@0PL�D��/��(��#�aP<'�?�!�������]?�X?�;�3x��jeĬ?���c��f���@�[������w����^��-۷�֦�������v��M�6n�N�[;�d0f�u����fZ��?���H�F��o���h�3�3rF�����pGͼSM�����.i�Q�w�J+i���%Y�\6��,yb�ixC��ҧ*#�ەͩ���mvP�o�y_Uj�\�;wDk-��c;M�T�W�ܺ47[�*m+�G��,P��=��6$#߰a$І��aq�� ��݌8��M�����T(��f���e��A��NzI:~���bR�(AP�ʥS%����EA������C������L�>_�&�����I?ttwЭ������[S����Iu5�Λ)�_M}���l� ��Ɇ��1��`���FK�s,�;<�B����e�®繒��aN�3M�0]u �S�d�S�dqQ<�,�ee��K/�yiNW�68�_��U����\-�������޽1=��୨�ur��lml��QsϞM�Y7?�������|��хd��"�$E@��Y��/�OF�$��l�pte��:8j��?[���ߋ�B��#�c��;!���Ca�;�^Zp�M�{s\�m3_4��+��wމ\��`ج�8��v+ѹ���ab{n4Ok�~�Os~��F��	�{��Br�p��^�D� ��p��E�dx�T��������9�_��$����K�b���������f�n�׺[u}�j�C��:_�����_�Me����Ȍ���rJ*����=���4�{��^>�`�<d!������61M<#΁�?�Y���Xz0_M�tcϖ����9��{/�I�ß��0nG�,�8��^zp��$b�i��<����t>5�r�87����{=ܯ7�5�VcS_�暚���?8�F���'�^�φ���˃��o��P�	ƐCQh�M�=���X����+�ʮe(`���C��_*�tȗj:���p:���&�wr�$4Y)Ŵ����+!��V�N��-�Xl�\{R�{��W�[U�^����K&:>O�õ>����FO�12��ǧ�w!!��T�e�I�7�E��&t�1,A��B�14Ǔ���s�] ��A��+'�j��\�t�S1��\6�KJ�;7kAp�ӂ�Gd��+�	�����5��Z�m�p<_]�!�\�(u1�`��j���lг�^����"q�	cg�E�O�'b���nB,XC����0�N2Q����l몧<���O'M�]�[,��B*-1�RY�iq<)1�g�$�K1=��/M#�޵&H���<!B��e�i�j�1���T}�{��R�,W���;
Q�$����*�5-��.a#Th�Ou䐴|c_��@��� -  U0@}�����K�d�9|O�-s��c��%���b��oѼ�f�^�X6m0'�	���t��KZP4^z�f^��[i�76yX7E-��e���Je!q�q����r~V=�E��h:�P�c<�X~jC�lm6B��Ȍ́��o���hc0��J�τ$�S���4�q��t�qQ0w�x�3Qw��J����ذ���If��C"y��҇&[�Y��qtƐ����\_m��UAؽ�}�Ʋ���(+�0�n�z-�����i~ ��}�.����s�A��oȋ�h�Fp�z�B�/X�3 ��.ض��ޔg%���C�u0���4=��c�T(/.�G�BYV/����kQ[[q�qq|D=��f�͊<)�)����5��T�F�����Vr�����NoտI3���7��'�����B��@I�7�E��q�~�o��0��k ���L�7��U��@�CD>��lSZ7~-��m�Z?�m�uC<�&�#+�&�h�T[��m�O�����|+���Dk)�Ǚ��f��z�=cYK���~��%��Owpo�FذuU9�C��ŀ"��aOc��Φ?p���Kn�=�����Ϛ��Ju� K~�HGJ��{��A1.K���d��z�E������x�5�i�0�O�cO-#���r�^�te�����������4~l����W8�vF��9fg�F�|o�����' R1�
�OS�}8�{"�h�q�l�֍s`����)��a���֟O��1�s��!1)�i�1�^�Ђ3Vf�_;ʹ����9�u�}Y����as��b5��u��b����������!lj�<�
l�0����X�	��,�����G3E�+8�cTz��\S,9u�RB�v�yv|��'��|-���<L��db�8�~6�g��OTz�BRĚ�g]f6S���~�mZ�1)�]2���1dݜ]|�Y�H_X}羔:=~���z��ϯu>��DxpP�b&ؐ�|�^��@� a�y`�'$�!:=�@w3�J��y�T��?@�����7O�[?��/��v�ŉ������Kq5�0�m2���b���S{������\+�uo6�������d�sݚ�E��.������&ߣ�ȿ� �i@��7$'���$�&� ��8
x�
#S!��rU�]���U^u΀������_����������cB�81^3�6��KZP<�Q�aU_�xwȜo҅2k�aR�ć��vN�.��M�	�T��:5X�U6xw<[(|~,������`��Xgc���Eh�&0����!��?�����}�      �      x��}���F���ݽ�&=ż��I��hͯ� k�%�Y$$�@Us���'U�������ьP��?���ni����շ?��K�o~Z�jޖ���^Ѧ������s��:��{����m*�,~}㶷��z�Ǫ��ŵ
����?���o�����?����O����/?,��~�:?y< ��K��ߤ���tտKW�_����������ַ.K��&7�^��Z��6�.Lϫ�;���>-o>s[|�3����t���'�<��������w��������������z��x����7k����m�����O��A�i7�e*F7�Ώؤ�ts�׷����e��s߶�︭IӒ��z�������O�����������؛7L�[���*�e�..D�~������~��_Җ�R�}V5)n��T�|}��UL݂=�}��{��S�y��4�	��/o�q�WW�Ḑz��:��JW�>�cu	_��[Z]��fL��C�����V͖36M����ߎ�x����)|�����p���'K��>��ʵm�.xG�������1&�=߳�1a�e����Ӈ�?���/�>���G��~��J�o|����/�����Ƽ��ـ^�Ѧ(�av�>�|�_�������/?��I|���\���S��o���[�-c�nau���p(a9y�좿��5����L�t�!�k����:�u����x�[�-���R�����uyz7�V�p����~���+Ʀg_4�.p:�i�g��ޭ]�a��cF�/�;~u]�X��mZ�0�!,g�P��{ߺ8�	3;�gWC�[�w�y��������8�����wc�f�}X��r��T�%����~�R���g2�� �]�tv�t�A��Q��Խkrv�̯�j~m�t�n�uޓ7�ϛ]���rvt�)Ƕ�i9{����rN����< e���˖;��T��}�g���?�E?L�j�n\{��y���{O� �	�j@���nٍ'�zI�>�i&d�N�X�֦���?z��4=�t����� �����z����w����z�\��;�/^]��[����hu�ޮx������`�����?���Ԟ9DcK�Ò ������|s��5n]�G�vچ����9c�����;p��n{C�yv8��ܸ��v����yd���>u��r��M.M�>���"Xf�}V1'��q����C�������|���ww��u�>sKzw�>��u�?�-洺5��<@-x�9�� �������� ����;¬?��O8���
���Y�ݻ|�c[��e�i��� ç�Hh�m����gQu�]��1B�0����t��?��Ԅ�x!M�H��|ǐ50ħg��S���+��w,�"�+u��c��;���Ӷ�'�t`����M��g_4��Iiz��<��Mo/pj��gw��oz��A��)���Y�i��^)��y���߫�M��t���#'�ƛ��*�$zn��߻/{�Y��5CT@�5Q?�[���/K|;_�����C�"�����^!���/~g�#�ǧ�щn[*���vA��մl��#�\&g���jH���mں�C���}�>����mX���2�&^���v�n�a�UF���Z7U��}6F {�TW-��Ƹ.X����&l�e[�R*�~	���_��0Up�	��X9)c���6���b����o!�^zMX*=Ky�׎o�&�^�%�1m	k����V�=\����'x�1�#&8�x_�Y��0��0����k�	��Zq^��Ww[X�<���,�F +���������ǰ�֜��+���|}���X�0rf�u[�c��E~��jB0��߿κ�Zq���ܔ��3fll��X�[\_���ڽBd-L@͒��q���%4ƞM#>��Z~��*,�n���u���_����sH�ò,&ξM��X�4U�a�j�� Ò�S9��
0=�&�Ѳ /~c�S�e������f������w��ɽLz�^c|�o�n?�M�r,Վ�f���Y+�VF;+�|��0�����j�X�"B`�	q��t\O�X������6���A �m=-�Gj�ւ��&f�q����^1q�Z�X
�U�f�`�����a�����]?����|AUw�#|��iq������� �>d����	�V��0BK�Z��V%�����3�D���Zx�J_�6s�<�Ǖ����1媋d�,T��[��ÏO�<� `�l�s��b-�m0V��b�"���{��"'�<.Ndw�S��m���q���h���d��a
�7Lap�vR��i���~E�S��4@x�*��$�0`�0C�g��~]�b$�d>�Z,$�M0�����ܴ`ј3�9��)U����;W�P����n���ZzY�mW�G���~P	�k�"��#6��˭myæ�4�0�z��%��Bș��c�*N���W��>����"D[�����wZȩ�����=3!d%2�9��e)��SfH0Yo��/G���i��n��a��Jqa�TE���<��D@o`Y��:Y�0zl:�謏�[T�k`�[���`��E����3�i�ꔭ=d����� ΅egaݳ����I�&3C�k�hJ�=�lHb:��-��z`c��36��Ûf�I�A T"��5 ��*��4�zܚ���<Xi��O����O����un�n��q���#M���ıB����L���|]�%����9qqȫ>��
�}�jc�TkR}��gܷ����s߾/�E8PJ���U����!�.>�:8%O ���Jo�"|�R<��5d%�`��L�^����j�mj����pW`��5���X�P�UJd��@˨bK!�wo���`�}���!�[H%V73��u��YwM����Xsk_7&I��	�]#B 0X���X�P�.�Sfb�ǪT�`�����/�+���Bo �M��n�	3/�KvΌ\9�����Y�ѭL���d����Dn'9�CV��.����zG]�/��p���=�t� Zm����W��+]B����T{kc�
~o4k�P�� ��
�db ��DS�7sݔhw�d1e��7x�:BT^3�;o�S/k)Wٟ���U]X�3~t��3��и�����˘ζ��W�����X�J��"U�Y u�`�y��=kC�V3 ���~�աs!J�<:�N��u�&���d-�W?7l�<�.H��	㋩vSwOي͙��r��ņ���s@L#��E��w�$B5�k����[�e���36��Xp@hX+u
�z�r@��sI����E�ϫk��n���q[��-���̲���b�.r2�!��&��z�p+2�Jժ�g�O����f%NK�H��ch׼�^�P �.���8�Ee޲u�`E�����@�V���
��I Y51���@]ۜ��j���_)�K�9���@~HXL�K�4��_��~�GR�&c�~9���RhF_�^ģ3������b���9�N���p�+�S�U<��n��`z��Jި�h������_�Ui����YZN�l��=ގ����S�6#0ŵ��(tE���b  u6��-!W�Ǘd]�v���v��m�e<r)��'w���8h&�H�"\�e�\�*�Q{��x��Wp�K��Qܑ W8$���Oˑ<��R�ꖞ>Iuᰜ�)�?c���z&����a�1ÍS���]\�J��Q�H����վM�'gM������e4�x �ή�<P�D���ϛ��z㊔����m���+@�~!/��?�(�] 0lv)��l%�`���d����*9��KL��|�'/��(�(��%%&o�fܜD��*���A����`�}�:���I��7k�`w	���N�DD��u���b���9���h�%��U/5�tg��Ǵ*I��"�*s6[4�B.?I�+��u��r�Aǫf�V˳�RT�%�ka�N6nzZ� ����a�N$U`�;��B,�ɛi�Xb�I���2�wp1    ��q���^T��s�Y����$�dbL[XH��.� +�s�F_J�ެ6>\��2�{�l�j�W��b�:f��K\���o�5W��IAs�������t<�"�ACaK>�la��V��Q �"(�$+���r�6�F�r�rC�
c���#���(=��& �k��[+x�UB�_����WJ������=6��5����j¸ڗ�`N����E܉�>9�G�C�&@\aZ�m�X�
V8:���!��?���d-���t�̮�)�t��h$V�A\����<��(W���%X��P|�����6O��y�tL����W�n8`��#"M������'����P���#ݺ�D��ᶚ98)r�����r�(%��~s$�ܒ���H�o�C�Zܐ�0�6׺�7P��&{�P �YPC���|f'���%�#u��gWբ��� q[w�ev1)�� +&U%f�.dV��g��R���S�#�IX�������.��9��XJ�a��sV��vV��>����I����	�9�@��-���5���]4)/�b(��R�y�f��.�������a���ڵ�B�^Ik�mG.����].�煢�V@����@��$ВZ��u8�F�����Ě^�cڎ��n.�D����p!2'��^�֕��l�N�5k�~E* I_�J�E�Ic},83�w"id�X��W�n5{��9��#�g�����X�JG ����)�N��ߩ�c���B��4M�~�Q��b��m28�Q0dݶ*A�o)a��K��{���֤��gX(T�I�qt w�ѭ`�	}-��v4�H�$�d!-I��&-�[a~��ۃ<�B���I�m߄X]\i|��9�M��
�D
�R�f�D�ח~ݧ��Ǫ2���fs��>�4�!J�;B�x�%J�GC���f�&�ݟ�Q굼nTz���Y���(W���Vx�b�F��lQI�?�/|)���-�G�J�2ajo�F�Ot�k�� ���W�2HB_}�딎�1P�;f� �5�%����T^���8�p��#ފ�Y�ݏ^y��X�	�"歞�7*-�0P�G����*"�#��a�&�`KX�wJ`�и1k�Pm��
@(��Jb�Y{`Ѭ���z6a�F��[�2�+EJR6�d���7�i�]]�IQ�bK�V�z�>��	�5�NL�#o7��p
��Ƿ��Z��[(���<������
ɝ�?���<�5�qv�h�w7���EXH����C��r����"/�^mx�Ik�9園�=?I-ܔ�X���P,��%E�h�aș�Ʒ�|m&=U��\�qg5fg4,�퐝���J���~�"�w�Eyҗ��l�-2���i�vOr಄n˭B�kY��>f�qM
��!%&�>im�Y֗�jg��=���#�5H̉5���`*��CA-m4�L��<N��ޕtU�mM�Đ�P�ؤ#�wX6fH��k��)9!I6�rȄ ��6��)W��@����Xp��?9M�������N�W3���T� \+���1��GT")7PY���K���$Z�XS�2 aL<QW�t��*u�x�ʅ��1u/*$8���eDm��QhbhKA�(hI+')�����C�Y#9�XR�f:{��U*��"t�Q�ed�I� [�M*Є����,S�K�
�l��]���C�G�;8 d)���6%-��Úhr�>RIA�ɴ��|�����)��ue��O�$��K-�n-�Ċ��{�^95ɲ���K�#Ҥ�K-����`�|];Ak��͢�ig
�h�*֫��]77�n}g���|��$�3�Λ2<}V�L��f�V��ΰ��j!A��������@`��R�4�3���	�}7������*�@r�JD�#O�k�`E/g0a�'�$m��'�0��0=�-�l��#�tbY�g��E�m0r,H	Z���ao_��'�]��%㆕)/�UzAJF��EjɆ#�-����Mti��XW�u]�mf�SCH��'�W9�}tyd�a���j#�I�$���AH�Q��\_�I#n�$���Vj@xO�*,���A�m	X-g�Xh<��tv5lɻ�IK�+𤿵��a�
���u�^����='��0dEZ�0eO�\I_��^�]=:|Dz$�+��Xi	M���!-GlS�4d{����Mn^`x,H>zQ+5L�jy',rZ�=<�b��2������[��U�n���$?u������.:�2���d)2**j�Ó����b��W<�����BSHbs6	Z6�3�
S�fgX��$��)�b�я�n�Z5z�����u�ER���]?�V��?�k���\냱�n�b�t�EHg٬:��G��W_���"�������'x��a�Y�
���6�]����uQ=�R�A��W�P����Iѕ)@aQ�j�"+�t���4���U�v�\8v��Н�4ݜP�"%��D�Ⱦָ����1F�QJ�I������0F�3�^C��� P��'Q��z�g��'�rc��HbQN�CD�)�D�\��%� �[vL��׊���ȥ"#%y�gH���إ�����j�U�=���R��|�ٽ΢ۡ	�d[�L�����+_�vѕ���$��Ii*G�(��+�%��1XX҉|�w)��0S��@��}ܬ葿�����X��M��[9�B����eB� X�Zx���-K�lm+S�U|Gl�MdlI<��å�[�U4R�l-�W;/�s9�$)���|�v��C�C�Q��':����aHl*+`�T���N攺�C|8*'DĴ�ؿ��b��N�����0��m�:d3۷��	Tb�`AQ� \&�4�����}�h9R��=��Ԥst2���cg3ذ��C���+��]�BB���NӔ�$w' 79j�qZ�t��
F�E��]5��B����$��`צڐ�)nk�� p��E��q��kM�h)Gj$-�/��6�.	�tʮ�ځ��L�Hp�]��ψ{��t�s���}O7�<U�u��7��vF_��[ְN��j݆���T�����Ca�+�[9���� �s�ִ!#�?p[�}$WW�'NTy*�K|~�|�sY�#��^�+�l->Z�1��lĶ���y��%�]ډ/E:����:d�$��ѭ��&(T·�&�	�`�pR�Hɸg<)eRC~��lŝkZ��Sf���b����T9z2P�G;ņ�j�dOl�恣�i��Fw�Ŵ;.(�Q��}����YZ7����;���l-�rJ��>j]OR��ۢ������xM+}ܕ���Kȫ��F5E�����
pϮ�����K`�8h�i�V�_1��`��^f�ڷ�!%o��%8���}�	`y����~��
�������:7y����4���+Q�������T�T�����%/c��/aL��ږv�	�"��>Q
ؐW����G�,9�\Q�uw-�Z�C��r��ȵ�T��8C�t��r2x��p�O<OG��:H(�y
�=��+Y��=��Z�~��Nj�-O���,���~������%�Jy
j�ٌ�%�}h��6a�:��~cZ�`wћ+��CN�Vw�B5��n�����'�����t�s���%�|YG:���k�i�쬯o�RT�A�B�'q��+��J���K�Aj�YJ5]���r��L��u��X�Gn^���c	H��]9hO%g?)�@l��z�L&��,z����'9LbKx:{���M�� vh1i��"�2���5�XaЬa9�ĉ�]��Rϸ�j��i?�xP	����P�����1�n���'i�g�"����4F��R�R.��J�Oy�h�9t�U��Ƙ���`�h}ԡԙ����� ��<�,m��#�K�V���[[�L�'m�~t��VP;H�R�h��
4:ʍ)~�y䎢KFZX�o�*O�C���o��:�(編{����J�t��d���4z�e�<���K�!	w�.g�)�-�T��_��]:�E ����f�x�z/�p�i�.��
�1�E;�8rI �  Lnw���}U56O�n�$�TZ�&,ۛ=���+�H�/(E6�ָ�S��K��p����/j˦}U��r��Y���ۙ�q:2�!z]�y`:%`��I��&�h�	e�얖����l���H!��IXYSe��K �k�T	<�T�<v��@B0�cN��[��ꖢ���d-
��s�]%���+S,�4C��K�F��q�B���Mv/�rrfyp%�ք�x@*:{�`uTO�}%R��*��%�ov%�nE(B^�]>:J^Rss��$y�����������hےJ��X�o��iiǐj���e�]a&�,�")����©k�{���W�x�h"��Vm�� )�G�<�3�qn��Q>2�(�H�Ȱj}3X5�ڕ,�$_�(b*� �I~lM`mK�q��<�a�OQ�,�PA���у����rtj�&�+��`�t��]L���)`���GF��e��3Ҁ��Ŷ��޾mV� �`,m� g��-L@j����A9����&)�Վ��׳��o����j�R��AT���޽�G#?�*�*���qԺ�*�'��ir<�'�AW"�J��)��L8�iՔdt��+��{���3�BUB�!�%j�L��{�����Xf�E�i6�� &���9���m�n��I=/�ꩥ{U��9յ��_N(�������$´      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�śKs��׭_�}�]x?�#�Dr,�*Q�Sـ3�L�=�TO�&���[*�r�r�lY:C�g4��= ��u�G����EaC�.Mi�yZ��x�C��'��JuJ(��T�����Y��н�ND�!����۩���
�t�3��+�h����������r_q)!������L��;V0*8��Q��o㼤�f?�y���#�ʨ�2|�|��6�R^���V����AZ�t�4^��z���uW�t���g�TdԌ�B���sz��<m�q���V=?bT�^Zo�5�����4G�sM#-�h]h��	��^E��q�nG��%\���L��d���*o^<���4��b뇼͟N�C�k\H�HZ�DeBJA)My�V�x\�����sf�6F�&Q�d�	�E�l���y�.���9�To�p�1�*��F�`C41X�A�<-���<o�������R��F�P�D���}Z�ܧ��n�7�\6/���wJT.���t(��9M�ӎ�t�'ZXDeb)jg����R��;��d�j��"*�:�y+��U�C��f���Ȅӥ~�=W�\8��p+4��f�Ӻ�?�e��5�ʅ��x���ţ>��aMY.����%�M��Q;*�F-౤� ���a���-��x�mq�ɥ�|)jp��4�Ô�#s)н�A���KFm�}Aʲ\�i����b<��6-�G.�W�i�KH��cTh�z��p@����`$�C��\4ꃀ�8Sփ�ϧe�/�BtR�f!*����@��j?��k�>��E�4ƮR�/�D�X�J/��m>��!1ߪ�5��k\�r�脃!Jv�^tשx� [q���j�*�r�脋�N�	�C�Ӹ��b����˼���XO+��F�V��Jup��1��������7JT&��s��n5��4�^bRӇP�C���\2Z~K[������8��_��I��B(t1��U*�XA#��������n�r����֒U�\*G����^|:�CZ����ӣ�ǐ��0B�r�����<����y��q>��tY�[`_Dn����CB�K��!OS:�2/\2�Q��o��\6E٢1�����9Oۼ\����xZvyf{��+���HT.#��D��g����2���C���-M�m����E���ڠ�X��H2�����T�rL�r���g��e��cN�u���E�bl�Je�yj靇���;De�9��E��s�R�X���F��x�����6g��w��
�FT.�����4�x�\,���4�~�r���G�1J)\��y��N/���,�r��We��|A�.��?\X8�hQ�`��{$Q0��j/Ӻ���=���_imÑ��%�SM���� ��|�܍f�#��(a���󾔊�ڧe]����f��+Gk�R�tt��X � `#��g~��S>̭\���FsKE.5�FL�V8tG7i��7�����n�%|��� Q����A���BX(snM�����&Q�l�h��a�X�aIwwy;s�Py\l��J�QC霴X�AW��q8��5��V�}ox�R�h�hpaT4ɢ{=��<}��眙����[k{�r��¢3n޲��}[�R�TRP�F�︜i\��*z�.��3=��ZZ�lB�,CoQ����9�\#��k��Je�Q'X�������u��0���KC�R�F}`�G�Qe���{���`[{D���@WPҞ���1�`�> ��qM2�r��Q-�*$�Yf�7�yJ��������V*��ND;U���>?n�����u�BE6�����ȧ#�ktE�p���; ����\t�r d�ΏorB��>%����Y�l2:�1�P���v���!  ��4v`*�G�i�B��-��:p����l��CӎYpcɿB6�Z���\�zJt��j/�uc��m�}�h�应�J`��̷c>�.Rllݧ�T65�����uh}?.��K�nD�V7z�Je�QGx�ǰ�Ǥ�e�C�%�7�r�衭.G�Bˀ�W�sb:5����2R�l.�Qtm0����>�V-'���m�lDe�Q8����M��/�a����X��%R��G��D&|�A�����ad:�4,m��_��Ѩ�G��9����������g��hsk�KFOju��6H�o�eBL��e����>���*�!
i��>=��t���0��2�0�!�Vو�����{�0���E�k��*�:"�Lj����S>���a�l���iGT65DtB"��[w?��'�w�{��\,z���X��J_�r����%-�w@�B��#*����S� ?�ÿ�OӖ}�`$1��]+�Mf(JH�q�{�����4p刔ˇ
)���s���yo˱���6��ٗ=��]�Ze����	#˙�0m�3;7���)��?�U.=V6h"Ve�W��[�c�!O���ˁ1Y56Dj�MY�"F��Q��y�-y��a�^b�p�X'��ƣ֐ȕ��|�+DVn����oQ��E!��Q
[Fm?o��f�r���!<]�h�H}!������s	���7<�-M�W*��/����tӚ��!�Ϙ�BN.��p�ʆ�^P��!
,�ȃ�i�������pi��ɨ���a
��;��:A!%��e�Ze�Q'�����h�]����p�0b�n[��Ѩ�SȨB CH��<O�K<!ٴو�e����j�0۞�ڞS�d��8k�U6� �f��\�ڽ~M�vM#�S���5~��V�h�Z)d�����c:��}���r�5�����O��]�I�ӴK�<s�)݋�3G��V�l6�41���!	^�i��{5x�,�i�����'�eC$�W���y�~r=-�1C���
��F�0BK4�J��r����b�S�h�U��@��ѨL�ɞ��,W�Т�v56����!׽�bb��Rل���D�"ˍ��~-;���4±l��T*����8m�v�5�޷�a.�w�G�f%*�N�g��ڕ��%A�6�ہw<�'�Ʀ*��D�
��_�z�_��h      �   b   x���=
�0��=�$i~7O�	�:�N��n�A%�y��E��J� ��'�֐{2@����N	���K�b����@���9=�:�/{x.�      �      x��}Ys�ȶ�s�_��y�j3Kܧ[� T$��F�`*#1k�����\���v�Ν{Z{�E3̈�$N�=��|�c�Sa�Gc�f�,C��e��=?����/����zz*���N����?�Ƶ�`����a��a��n��&���>xB9��]~�����Ê�?����-��a��c���k���w�7������oȘ"(f�T�!w6�\G�Ŏ�;��!�w���D���R������~�����߿����������}/�_q*��'.
�JOx�,�ł�[��G�y
\µ���:	#c��0��H"�Y`H���%�D^��x��3z�lW� �>�q��?u��S}�O�����o���}jomo���q7���7F?���v�M���ޓ���v?�����l�|�w�C\?�o�h��?����1���x�k�W��i����O�d�oۮ����7���X�jW�]%�oV�-�����o+�t��~b�����sb�+��ۮ>����?���^}��j������[���G�h�ۯ��H����Gb����G4MS�Z�P8�bC��L~��@�1of���N<�4�u��k��ȗ�����@C�ĝ��0Ns�HO�&�fz$�+�2����������~�-�V�6�,;ߺ����د��'v�����]���s!!�D��h�ǃCP�̇����zv�?m���Z���։�?}2:&���e�&�	����C��	��m�}�GI�h��/�k��`��}u
hlD��S�,j��1cb�)��o�Nx��&�0{-+Hʜ��/��N6�s�R
��pE&���p�r����F�|
�mD��o�~�eJ�~�X����dWہ��r������B:��-���a��;d��oA�:n�������6ۮ��Y]��X���c�LE����ކ�~ר��a#� �#r�@��:�B�,��d��^�!&*/�H`E3P�#i�� �*Ǣ<Oҝ��r$o5�R�����_CU�-�8H%�����Ҧ:H��r��7�~[Hf�G�#�Fna�~�~�vO���~v��}�R(O����G��S�#K��f#�.��1B�&=l���B��{ZJe��&I�`�:���3X� �u6qk�a�����-Z�E^YB̊�c��NO�X��`�DS�=^�g0쾑TV.ڍ7$[얃v.�6:y����$�����I��L���ܭ�O�T=mv������>�tO��	�z?WB$�L��2���A_od^���췎���7�=G~f��������p�U���y�o��J��#�Dp4Ò��u�eq�`�N[�����̕���yR�y�r�`�D:��N�x;z<�� *:�C2��3k[�i����F?s��ݬ����G2��&<��:
�l~�@��9�۝$��LX����S�������������$�����5X����;���d��u{ bl�M���n�Wi}�9�(�G�~���õ~��K�Y��[\tr1����Q%'�g��#_���8xщ���t�ħ@o%�ҽ&��qσ}s�V;+B#����f��l�?6�=���qq;Ϋ�'�%�!�!��ɿR}�p�C�n��v��d�^)��v%m{��][��|}{{��u���2H�$� A�׍Fczp�Ɲpu�$������9�H�v'	p�u��-�}�	K�8��&���&h�.U�t���P\�B�K����v$���L:2�o�w?u���t�W��^��̢Gl�}�ە��dq�r��NАG�����3������O��1�8��}1�u#����I� 5s�*Jh�T>�<}w1/0��`jslhk�Y�'3gdu)��$�u�t�	�-yE]ѴF��b����F���bn���;����߲�����D��'Q^o�o�ӵ}!���j��� )��=_^X�.����"S���v�~l�z�^5����.ToUY��s�Rw�$h�ey�|��u����~��y<k�%�wY�q~�_�u���/�w��2w:	�zC���y�./�j�k�����w�Cu�����Qv��t��ѧ����̫����ϼ't��Cdo���k&����<���uEo2�t�R�E!�F�o���_�2L,R9�C��@/Jǌh�!�ѣd<_7f���8���Hܙk��@F��������BgS=u����&�0�8ŮW��,!:A��8�wl��}�B�V )��oY�&+�C�J/|�]A���AJ�췷-R�G�xb��"�r�a�?�ȟ���a��n=C�o�p��FV�L�)͜Z�Y�h�&�cX��4F>��&0�#S���P(Q���%-t��#�P"	4��d�����Խ_&;7�I9L� LM�=,�*����|����������ݗ�ն�4���V0��vs����03��7(�&)ˡ��?V��*�Y�s_LP�٫d��*^�����j_&�:�>�0�z��e�p���&�0h��,̈ͳ�YKuit*�u!�g�0�ŉ��s���Z��?��y�U1���l�K����.��=���
@�
�g{��yޕ��#_��ػ�n���@"�y�y���Bͧ��M�ϐ�>sS"����	7�MK��e��CD.[GQ�79!�L�b$\<�1.�� �Hof���^�X�eaoJ�l�Q�"h�d��2V�H�HQ*�ߛ���z-|<�)�@���ҪJu:���t����W�m��6��T��E��6����&��z0�B�(��G��jo�~�0d	����{���6\�g`�%<e&�E��k�ث`��L?�p�!}6�(XjIz��tf�{�6�P!�gC��<rB�W�¾��ZU��*:!�*�}s��7H}ˣ����P��%P��e�Y~ :�N�u�(�g�Ns!o��#��j,��.6D������q�!t��1߀�89�p�Ih����ӯfD+�^5�e��K( �O^L�*�ۀS�I�w*���5?T����*a�۫�k��0�]�zO�Vw�yWi]7����w��� �"x�Q��{��gY'G��l��� ��Ky8z�&?� �s���z�.T
WbO���MC���WdfZL�6�B-�S��O�� p:qq�7��ur�C�u�$��~�6ׯt�~d^c���ߞ 9�~��W��+��B�U����ހ�M�>�Y�b���\��&��r�IӢ����C�($/V2A
♎�-AcC�0z��i� a��]���(Iq�S��w��e�U�샳z?���C�����a?N7�2q�F�٩���{U	B�H��I�󁹶_C�ً6D��u���+P�q���!)�|��pl<�=O��B���#y'͏)Z�]��L�~|:���(�$BSY^[QG;���<��hx���uY-�\|E2�^5�r�5G$3��m��"�kj9��y�wB��m��Ǉ�Ksy��0;Pq'*���G�@�)4�{���S�~�d|�!���C��7��~�"%��B���<J2�+C�i_�	�"��N\�����b����p�9QPp^�7<y+�
[��5��i����wS:�5�]5�J:�JZWxbYz�����M���5�b~��{~
܍�E#��^��c��7�u|p��.-	'�����#E���Z�4?���;S�,!��$����	Sc�L�]�J:�">kG&�~�P�2K&�:�.�����c�k��&2�1�+V^�B���A��F�J���(�X��уX.[7"�M'K��hΚ�H�H<��D��ȒTz+㛓�Ɇ�k�L���z]p�ʻL�qz]�$k/C��U9W�A��Ziߚ����j�٦�]jT�1Ai@Z>����i�o.Ҳ���J9j�E3Β6b0z���g�С��ṙ��_�/��S(�[ታ8��P�u6A�rnp��Z5x^�yy��⳧�&Њ��9f�ͪ`�*�kEFW�K/[�
x&#,�;3�-�|�USE��1{ZQ
�aX�����}�Z�&^�̼rJM�vǳ4��fr� ��ֱD��>    ֫uKG�R�K�	.-eU�F6	���pŦ�6yv�=��b:'ގ�&0��#`!�&q�bs=j�P+"Sa�;G �� ��"��iL��c[_�����bʢ*�
oR?�������PΩ+�w�t$Y�eP����mI�|~�m_ե��nK�X�B@��eUA.�"��F�5t�a��]z���"�`��z�v��p)n�c�
�;���KQ����jjȢ�ȧ��y�[����������m�w��{��J���PGWZ�-
�	�=�b��d0r��Ņ�V�����,x2uo�rVV��"p�}�	�3 �������q��/���~�TL�W�٥��|��I�f#�h�-1��45� YPiV�+ޒ�ې���V��+����1ܯ99�al�so�u?#L�N�x'x�b�8��`�]��%�"É�����RB���O��$M������ųU�O���"A�lGoG'�ω�.xL����"V 1Y�/ӽ����|W�}ݰ��f�x��·U���σ��e˯�vT�̎�B^a���L��@�y���H
C��}�g�pt@����0�:�(}*N\h]��$�c��fp	u=I���G���I"�˙'9c=���L�L�?Ʌ˪v��ޅ����g�7�r�-��^��̷d�D�����w�)�����S��4�o��PT1k�B���YK��=h�R�	�UCg_��r�� ��x����2�%mGe-���cG��#� wј��/�
�E��X��jZ]�ϭ*�W�s��2�\��EV����&�H�-g}a6��(�wq�A�Y��5��lʑ9�m�ߘK11V��_�W��Ǿ���� �2���^Ý��Di͝_�8��VʪC.8a�}`�&�����BTk��T��/�����<)�=j]�l������PPZ�8J�cqE{������R,1zDp+ֱ�7nSdb/r c���F�Sѝ����.�Ά	���"���i��{�D����W�����o�������Ɵn�&�)GIhl�rED���[~����b������Y��	%?���8N1M="���H��qM�loX�@�_��GH\4wg&�:1O�5ʈ� ��a��@s��&a�"�)�s�;Ģ�ղ;������g���e	�P�/T=*n��������g��^���E�$5����|��c(����(�x:?u��l�6�����i��y/�Zl~�18��p��j��_&�r����y�ٕin%9��	qs�i���ꩀӆ�[����[DL�����wN��$9�����w�m&u�����|��������O"�_�؈~P�.֍P���Ό#`p��&@1/�bh�R���_&�,�x���J7̓�����
-�\F��������i,�W�O��W;�YKoT[",U�H��@k��<ܻkӋAe|������ml�]{j/N�Z��M���h�������X7b�с*D��x|��u2��E9�Iȡ���Js ��pdC�wqϮ�j|�0�Î#���$r��mx�4ZE��E�ݬ��=Yu�V��d�.�8ne)����b����ڝ7��"��d|b�����P<\�yђ��Y��Gz��䧐M�×v��K�AZ��'�:���K$X�Iٴ/2�q�Y�N�v"�	p����(�54���e�v�_��r<|˙���_�I�*�L���EW�w����a(�A#Y��jlx#G�Y�n����BJ�ŕ���,�������$����қB˘M,,#����Ѧ�	���%:X�����"&�����=`r'�a���j�o	ze	Y7���HtɌy���Ak}O��cY��Gh���R��P�T�pg�y��OH'	lW�����/Y�R� �P�E�4|!��� �}��?[/�?�M�ӣ&v�NՍѣ$Š��W�R��l�K����l)��<P��6t��;�)��#Y톀�z3Ids(�?0��:c0|x�_\h�P��K���Rܣ��qtkj�����oHU�κ&
�^u^�A>522���}����5E��u�����kP�羌Z:�_�;-{u��g%�l��5�}'O"F4
nP���A����h��_�ڣ�~w1i/��Ʉ~�0�Tz��?S�P�����x]	ٳ��:��1�w�y����#1�E��ͫ2yW]�_��昨_eF5�TB�e�]�8=}�5�4�5�ӓ�Q�bG��|������_����2���-K"�gp'�N2	�v��V|b�po�I$za@N���۫�U!���q�ʷ�vrvUS�/@�z�[��>D�h�/T�n���}ڽ��|�FU֬g�4��\�{��ͨ������ ��o���X2�q�c��d�H�ľa��&�[�YG-<}8��a���>ӶC��;���?TË4����ʮ��W>�`p�U2�����*�a-b���.��}=�������t,tO��
�)�\7T]���ߪϧUٺ�Q:�$Kaw�KV��,�G�!�t��Ղ5\O�j�C����Z'` bZ�� QB^�~Z���7đpChH����������,��@}���~+�ZUF�<$���M5u��sC�m�%ݶ�nGO=���}��w�e�r�|�ֱ���`��M��,�AE!-ysgc���&��E@�%Z6�g9%/��]���[ז����;����������[U��=����e�n@��^�Z���������w�T���Y�N�k��׎[u����-�sB/R�1F�F� ��֑1'�J��D�5vOR�Hc)��3�Dt^�b�p��B`ڡhڳH�9�-a����.�P����S	1�}��u����׎�ƙj7{��Q��:�jB����\�sQu����H�J��xd��u,�3çf�G7~dA�fO�I`��ڪ{Di�T��H�(͚�$dΙ�V#h�W�i��T^����"�����˦\��cY�k&��#�ӷ��҂�d��p݁S3�n��+�x]�l?����7�3N����g�Т=��F������GY�^!��6"��GKg��&-�ު	��\`������I-rG�m��'CC�:�-����� Ykr� �nV���v+�nם�y�x��E˖�r�-e�0K�W1ơN&[3[/tӷכ�Q$��qv�?0��::��^�JU�&t. ~�~P�T���=ӊ1��O�y�ܲ��jq��6�h��i��u�8}s�R�i�޳�Ue���^gl�f�K�l��ǣ�a;e���u�+wj`M�p�����D�t��}��=���	�������ko8��1�CӬ3�y-.%N9��WU2��A�\����]�K�����?�%:O�t��'�Q�>��*x�Lx^H�";�n�*'sd֣E�;X��ro�ej�&��M�L�h��$�> ���1=��ϥ�K���p��ah�����:*��/�g?�� �@`���.���<�s!P�N(C�
��i�.��*��֕��_�J��F�K �;O��G�'<�b oG��X��h_���/�Q!��[��N?�g��$Ŏp�f���|M��7(���Vir�5޿;3��7�/`�P֦"�Dm�V��&.�l�::�h�b�N�y��U~���*��Ϭ�rJ�mc���}LFh��fm�ycw��
��6U�9�~v$Q����do4>�R2��?[7F����5�,�2Q��t�	vmL'k3　��㉍��;mdc�e�&)Y89�ǜ���H�W<�FI�v�;��c::����3���%j���W<�y#�]y{V�Ҳ�)��V�}�FV��|�I�#
ǉG=�ź��=�|$31�	w/���<u��]����`NX;���5����2)�����Z� z$����g���}h��e�F��o����w(d�w��f�������y���N����1�j�v�y���;ĸOqu�Ff�yxE��o�Û���E�"Nyz�ULd�ŌU69��g:u\�������|��B�tBz(#�4��ȅ�&���ᇙBV�ڎޅ_��V-<5    ��y҃���V��W��m	��a�y_I�F̈A^�A���85�������-5�EY��.9Q��� 	W���-��T!mJ�2�.��K��k�?�c~���҆��$��G=��f^����;_���p��v��	֯Z,k�fk�9��F�^�(͎�K<d�����w�K�  ,ӳ����33�y3�߀;$0A�(���|��2/p�-]:�ƞ1����Z�E�Z[��R=��&?�
d��W��U,[������J:`�J�Xu�}������8US���R�b��;�Jp��p��/+�#E�.���{��:��������$���?��f�Һȡ9�藊EC�!u�lY��o	)f�^���1B5h�-�6|�N��ET$=�ih�zW_�����L��d�A�e�A����$�uc�;�Ie���#'�M�&��Yt0/����Cpi���6�Ϝ8ҽ�K+�Ȥ�C�;j8�aF��+�೅;�}5�纆�b�^�m�ɀW�[�Yké_s��Ժ�$ �q����u�^���;%P��c���<Z��46\�yx�Ho��dNF�CD���$ ^HM�98�lumI@`_a�}ؘIx��7�vc��ihO�9��-���c�vs�����U[N{�`WP�)��i_�V��!�N/�.¶ff��W�Ju?v��w�63�0|��- ZGd��M>�^SY��D\r~g��/��R�4:^��'	!��D&C�7kY��j|���'�}璑����+H�vU9�%Jx���p:Y7{�Ǌ�[���Ԟb�i������W9���~�~���}n��15"h��8_���78�ч�y���+
(}=���~i	�������@�&�ʛS.��(���!E�����!�+���B�z2|��պԫ����U�S�,��H2ٿ���=�G�@�ܾw.>�w��0;	�y	���	}Ä雃C��1���>p�:<c����p݄Vd��ԞYM"��X���H&��oH[�à����0��M?����� E�����r�Hq0�I�U�ױ����/P�
c�\���oڷ���j��u�Z�!������Jd�}`��uE�p��!e���u�8x�0Kp��"���L��ӭ_6
�M�6�)P�D��}�Uv+k�Ɗ�ձ�ޮNŻ�HtMg���� ��-��|TQM[y����Z������\^�W9���4��}v�'9�����G|�|����۸���O�pϸƑ�����*ccR��������~#,��,�/(�%H����;I38x�I��2^n�Ԁ�����}��)���}�9�_�)�ڇ�"����V����aJ,���k�ַ�ƝZX6>#��#^r��Q�y�<���,�f�A��J؁>�|��$�8�&��<��)~)<k�2����ɿ<r8�V���E���?M�5�B���P>�m���������w��W3=ZqA�!�iD�,N�c�Y9[G6��,����Ik:-d�Ql"�l�D��(�?�Sk�|
c�EQV���6�@�r��%7t�]���1�cͼ�ϝj����qy5D�7=l�v�z��ѫ�(K���6��]V�Zf쎸�(R��l �}qg�hb4��r�@7��<I�-O,l̓M.���hFO��%�Soe.��`SW�Ξξ�/�G��S��X$�����x��v+�}pzkLC��y+o��#��H^��Y�U�_�t���^�{��V'9��O�N����x<~����z���ѩ`a`��	X�z�j1��� �/���ʍi�w�	`-^���$G�*  .�	
�����������J�{�Sխ�Q�⼽���6��1�b��v�ꉪMP[�돪����;�a7���&f=�X�׍1vx�'=]�;!/ؼG�(^7��I��|�/
�$��g�ĺӢI�
������&:���E���r�ͣ}�Wn/{nP����s���*�(��r�R�&���vљ*�*NU@3?M��c�D9��![Gc(nNd�W�Di����Pt�T2:�Ϭ��ˈS��fQ"Y�x8|�cќc�o�����[�E�+Bz:���s-��-��gv�C5R��RU�zR�X+��2�jh�W��=�6��T6�z�ze��dFJ>��b���eh_�g��>�xCY��K(� �w��i�A*��O�/X�>��E �/<rkXQ&�NQ�'����׻W�T*8%l�!k�J�0�?9����{Q�q-T�/�M�˳���G�Њ|�e��J�k/���Bj�����Q��������,���E���������`���Ҭ����m!�Je
�\��3$���ru�\��9iM
���6�+c8�I-אG���]a�����zۧx9�R%���G�ٺ�T{�yNck�'�@�n��c6Rc0�.k{z$��35� fPG��bq�I�e����\��Qf��5�k�h���B�f�䧙TEjb�Δ�F�����m�=K�~��Z�Vo\�W��u"Y��N<j��y1�o�37�	;zˮܜ�8ع��$`ld������e���e4��'[������[
��t�d����p�Ɣ��E��v����i��Z��ϯ&��]�[��&$.#�x��I�c�8�ѣ&�lɐ��&�V=\$N�\A�E��)�H1d�� L�*)_aLj��1�gZQvbP�L��dp?~Kn���6ﾙ���0��.���\�[UΖVݡ
W�u_�wC>��Ӌ�� �U�oT�n��	���(�xxWG�n���:ҳg��{��S)��v	0`�x�����!��dI!k���<'ӭŉ���U�t���|�Zd��U9F}�n�{}�SS.�������{CJ��j��KM����b�6�Z��5D^�`>K��,��4Kc�~�l��=�`�Һ��D���P�@$��E����f\��$M\�Y��;.fpi-#�{R�I�������H�j�Z9n�����Kj2iS��Z�x��e��+�ʋv�w_�~���k�6�6�W�[���r
��1��u$E���|���+$�J�H{*�(���cȫ�Q���BH�����]�D�ļ������oM�h_l�Gh�[(�m[ً��r^Y�$zG����/gU7���B���67��4)��c�����u���� �PIܞ����$�a��+�4{E]��!<���Vg��X�{	�^�K��$X)�T�}���jڶO��-{t�3��襫�:��|R�ڗ��j9x�_����T3<��F���:�!����1uK3��ì��/DN��˪JOT�W��5|�Xp:�oG=�| ��|��E��ğ��\mNQ�i���`e��������~����2��|�^"q�[����==Ӧ�����c,KQc��0_Gg�n�O�e 4.��]O��m�_dC9[3���/W��c�J'��%R"l��Ĳ痉��O��jKuwZ>5�FooV���9��1��n�lA-��̭B'����j�,��g���4���X�bZ5|,�3-��������z����!eL �\^0�p}6yV�֑W]���s?������Q^G��1V4�fiH_;u]n,[�	�ՙ�
a�W�Ə���;�3nb=��)��Zܾ9�>g�Q8��,�я�5_7b���:B������`�̢_n2�]�!��!f��D�S`xz uݛk�KX:�y�ϳˁׅ����(F��U�}=6�;�ੌpn�:W�u=u�1廌ڊY�enܰ���"G�7B_Mp���:̃��\>��^�9�I�4;�h�}@���M}�̝��Õ����-�Yʯ�]ܓQ���C��k�鑤���բ��Ⱥ�Y�Ȝ��\P�h���ަ��{�h��Ǯf(�WE����R~������v���E?n>b���*�����k6��+N��H
�ܘ!GF���PlF!΋�Z��������(y-�J��W}#��%?q1���NR��Tq��������B'#A�ߚ#y}�y�n�V�⫌��5��.�,{+!�V$���zN��n� �  T��t��	�Y�|���:����5^�)3�%c)Ҧ���py�0v/q�7�)��gk'�N?	#<!ZÐ��r�Csp^J�>����`��"�2��g�t-}3���m��S
'P�B�x���ʝ����������哹>Uj���
����X7&���X��%���"��)oa���ea��l�������COw0�<��_�aEF���:�%����uoM�����3��nɎG�g�Q�
T��K���ǻ^m�ͻ�ב��jF���<�ϲu�bÙ�+(!v6�.f��[F��W�؜�D?�gv.�Å�l�"0bo��o�@���.�^�7��)գ>Y���R���E'�ͭj3�򺳳C�+r���:��L�=�>���G���=y��n(���Ěȧf��?8hK��7F��K���5�1�%u�{�~-/_�I�������@h-3hAr��ri�؅�Y�PO�ۜݺê`����k�݈�&@�*�=~4Ю�~ss{u�v�! �d�m7=�41&Y$��CeSF��pe�JY�����BB������Í��DNh%�p)�&.m�z�uq��]^���C����{�d	-�N���=i��l�3~���8�r2i�L��h�a�M������c�������$�[����`��;{tl����]�婧��.k^Ȟ=���-s���
�栆�D{��Mm2���dF��F����ȸ7�ǫ�bTM}Khʴ�����*�Ry�b�YV���itx��4��3ūʋ[�Z�텵7Lf ����T���ir8�V�m�	CH1I�Ă7:$��1�͵t@&���=�D2�o���V2y�3�ӟ'OOך�Z`������zT]���we���&�	]�a��l�B����/	*o�k=�C�����o|�P���:���o0s�W��w� �:b�_%#0t
����)Td�����ָ	kn���}�.s,�c��5�w����N�Z�^[�3�:t��f��9ͬ�1��x�����lGiMx'="bL�L�g�Xǌ��]��C>��tqtVS���i�(�yKY7bz&a�1�I�R"Oq/c4g��`v_�^]�Z��[�]*�:���C��V�-'/{@{���u�Ι����,�����)r3L��#B�	��<���XN���<SUx; }&Ll?G9�!���YBҘ���1�hP?�3pt1z�k �ɷ�-�K��ލ%:L����G�᳿������avN�j Ⱥ���>U'*�MA�+r�F�.%߰�Z�ӆCT���N1��H�����|Ad��N�x0����(�F�Jm���Κ>�4��4��؉wB�D^����'�f�y|����j�N't;j�_}ֵ��y{wmw.�׻��-m��[y����u�ܒA+�SO�����
ҩ11~pa@������8젬-]��wO����ws�<ljk?�6w���" �^�(/Ltn lu-�������R��=��9�d A]w����O��aķ�R����)��~>��['k��v���{��_$9�X�{�X7�����)89�ސV����R]�b�Ą�KF(�G(��o
�Nb�'n5\?ϴ�&����d�ʘw
���5�f
w�������ђM�Sj�V_�H��t����m\M������`��Z�2�k�G��}� ��I{@����߆G{�żx����P`��4 A�=��pB�P����h�P�����^ȧ'�
R|S��ȗ#�K2JA*�6:�7��A����Fy�U�K�_��sk[�g����9�5jS�0�F�O+��D3�2��]��Ff���O�>�p��Z�Q�FF�*��̜#\�^�0�U�� Γ&;��@۪!�Z�T(+����*�/T�F?U�Oh��zv�ro�M�o�2�E{y�:�2w`狻q��O�c�����_��T�      �      x������ � �             x������ � �      �      x������ � �      �      x������ � �      �   
  x��Y�n�H}&_1﫠�껿e%�`��83ٯ�lǁ�ҕLKNuwQ�sNUڮ��,���}���2A����J	��(���}�r'tj���"I�!�~�|b7}�G�s��\җũ�K�6U(B���&�������ˎ���!W�W)���̫ڲ�:���(ʾφ�d8Sy�A�O�DT�
!5b2�F�o����;�S��2f�V�Gmϋxc`~��|�1�(:�\��7ȳQ�X��=m��5L�h��d�hL:�(���A/��J���.>��3��H����=�{ ���1�7��5s�S?4�l(�!�JKT��]6���(oX1SJ.l{����ЅÁ\m��`�G���CY�]>4�����[� ��� ��/��@s�N��/wt�k�u0f$�:0YȌ��48�&�ݼ���s�=;ty=00���#(˿Hs����s^�R���X��:</ܲ(��xjN�վ�D%���mه�D�va�1T%AJO�
�;|MSE_@W(�J �q��J�n�гUNL+�-�璩]S1B� ��&�H~�*@*��+z8�ڂ$��%tR��KV1QcL�5Vɛ�7j^\�i��!��W���y��8�V	��5t�lؒF����K�g�Jm����Ab������>��Jn����^�P��*8h���o��b���e�}�U�!�3޽dU��z�C+��j�#)��P25�R��p}V�y��l�}V4���m�ð�`g3x<�m�D�Z�f����f��/��6G��'����h>p��*�4������mp�F�NBj�����%N��x���T��Q,���ܙ�=0	��7&2���(��b^1K�y<�HL����˥�<Z��=��_�e�X
�	��ǉ�a��Q(�{���|P$�v����^�&심/�!��r
�&���,z!���.��e��}�<���P2��{�7�3;�F����و�2f�ʇ��3�IZgc��tǄ�=����Wh�5��C�UB�P)��t�ͅ�).���ǡ��.0��W��B�Ώ���Enf ����� M��<ﶷ���s��F����\�'~d���(cN�?�:oC�/D���杅M��l���3{��j{H��^��j�@��)Gb�s�32�E��F�4s��#���z��a��i��|Ԫ�h�t��y`o����u��x�jyK�rRv��0J��^Z�̌�+Q�v�S�vnM2f^\��u�r�����H!�X�������%�N�i�]uBT��Lg��=�࿘�N�����D�R      �   1  x�՚�r�6���S�����蓒��'�g��Ӻ�4�%.)�$���U+�[%���_��_a�ՙ�DA����ŮG������x8���p�Y����pt2�����t�|0���`��4|��'z猊Wi =��3�E��~��˗��6���O�����~0�gP��/?�J�~π�7�ӌ�hf ]RC�~ 19!����o�xw�Z���D�y	,;���y $Ka	�Є���	�c�'� $�#7 #�b�b�E���	��H^�Fũ��9�҈2�_e�gu��ir�3��r�՚�,�8 �'���͌�L ��50y�2"e�$O� ���,"�r�g�u���@�HC��lm>�7ߠf�����>�	CZ���)����3qܘ��BgE#�r��}'k?k�m�v@�^������ϲ-�W��8��lh��7������
o�\�ll3կK���V�.ѦV�I_�H9���>�T �,�~$���I�g�S�;e������$�ju�W��b�k�[ՠ�Gk�J�~W���\�<�
54���#C�?����u�<����J�Rr�ѐ�܅�E�Ԩ��&�6Z�N]A-�����T#9��'�mO.?�E���l���}�0@{I��J\�0�(�|o�?Vl���Zu2��r6�[�ShU�k!���Ґ���ɸ��X��p·�I���K���X��Gށͦm4S��F�ڈ�$u7�د��}�E��.��2u�DO�8��4e#�K-A��<u3�y{��/���2�/�Y���^�>M 8�lh�����X�ϲ��#�mhC3ݿ[đьH����̸����+�ͮ����+�G���S�no#^�� ��/<��|A��a[<(�� �*h�]U~�*g��Q�2\Z!�9��8��ƶ$�tܰ�v�u�ư��z҇:F)s�D	�1D���F���ew}�R���ÌH6)��*ä���'�{�wj�u���MlKԐ,5%7(�����<[�HyV�VFG�\#'�v9Gz0���u~yz��]3��=��
l����+�r�	N�vC*���M�L�`�|Ɗ���WF�����6d"��B�8&�	!��JFdj=D#��5�Ir0��dR�F6���:��7l&�1���SodP�ZQ��w�>n`���t51�j��gj�HE�k��\�[t�_@ O�����5�N*º�tEDJby�'1���*��+��R'V��[�/���խ���1І�+Ȳ~�xC�Cr���G��gWx2�8�ˠ�l�[U.�s`x�aֆF���ܟ��Y+S|0�1����Ȧ��ha2����V�HH�d�$�pX�F��+*l����!�4䅨� {���j�����U�}=�b��F��Pd`6i��"��1H��N`�mS �Cym��������O	���e
tf�� ���~�'��]�+_��T�3=]I�ȍM��⾿�_����=o��`��oT��a�ow5jC���!�YK��vBX��B��N��ﶸ�J�v��T�~��_�f!���<me'�c=�Q��V~UtqB6���S��pn#��Y'��w�Yy�vC֮�ՙ  A�ba�,o��H���������r΁	�M(
�Ba��|� i�?��#�۹�S+��Ǳ�$��V�����l�H#C�"ۀչL^�E1��7u��V��z '�hW�5�]^q1l�8E}#+�Q��fR�M�R�S�x�bl廧�!���ْ"�g҅��T�M�j��M���@yn�2w)&�Q�R(���0.��*�	M��(�D|cM6�1���fW���GGG����      �      x������ � �      �   N   x�����0�x
z���N�8�Pg��$�ݝ�Y�{�n�@MTZ3Ɔ1�ZAs�U�#�gg���-9��\ �!      �      x������ � �      �   �   x�mͻj�0��Y~
�)�BG�E2x�288��.Ƒ�B�Iud��-�
��onL���O~��������Z�2��P��\��������J�r0LS����Pn�d%vڷ����g>�8��sD���C�I�u����gq�t�%\y?DR���{��+qxt��'�^��JBm��KdY�!C>d      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   g   x���1�  ��~E�dpoɂ��V��P��>c�.�o8�Iu�s,F�9�����l%I��9)e��~(S��5�wW?f������<�4��w�`���l�.�      �   d   x�3202�54�5�P0��25�20�3453�4�60�4�/kbjffninllhdilnia�"da�p�qV{:�������rZZ��10�44�&��E�+F��� ��#�      �   u   x�����@D��W�I�����^$ H�(�!���T��z��*�̛���d��LªC��.��� �N�il4F�(֫S*�"�֥���B&b�P	8����}L��l�I�w���9UA%w      �   P   x��̹�0��[9��o�����t�4bQHO(�S�	�vHG��X�e������.g�B�c¾ھģ1݃��K      �      x������ � �      �   H  x�=��܈D��W��Bw������(%��{���Z&
�u�j�	��I��Q�H����H�DQ� ����A����a�'�Ʊ��F����~��-s�~��5�Y�=~����rO[�����
�:gV�A/n�2)G5�'"�UEh	�B�������=@ӻ����9[R@�e��w�|���D�`��F'��hf���Ƨ�(F��*)^�/�~���&�0�P���f6�"[���	}mܫ�D�o�s�c%Ι��.�'��pJ�4���P�P�m|����p<�r,���Ԯ�onU�	��.�# xS�U\2J�龗�5.jH���x��o�$�ft\�%�����@ʘ�	[߽�%��2��}�C͛��$_Y�U�E:�NS4u$dA��N�r���ƺ�9�R�i�/{Z�$���Y;z_��/$|�k�mEe�)ѐ�M��F,��'��3�<�l�g��fZ�������t�^w�-V\�M�%�@�C�N�Rj2�:�}1��oeJl��2���ꂀ��s\��ƫZ�2��"�#���}h�`SE|��9
v�R��j䩛��M�GĠ���"]�Gf}�(W�e�������1�`�ާ��|�_*�^p��=�9o,��t;�͕8��A[ &� 鹢<9V][^���xF��V����5|j>x�[�w;Rm=�ᤶyj�:��>Ȩw���%��g;V�F���G8Lw�z� ��N�e7�xLn�١�ڥ�͂���ݣ�e�O�Yƶ*�C�����.Ew�8�Jra�~P�=�&Z�.aٙfx7U@b/d:�2CW�T�4��A �,�_!CV����~��9�$ ��RO�Fcm$w�v�j�ꆫ0F�{�"�eӺB"�j*%M����
}�G*���p%z{I���q�c�!n�����CR�	�;`y nO�$ a�"����O�l�k6�$��n�w��
#����ǒ0���t�؍��)�|���I����R`ָ�]�5��\���0o��t��j�����x�iM�g��&����E'J/O����Ҡ(���VW O'XR|����\�!���ae�=L�+��@�:g�t�>a* d�Ӷ�æ�E�	�ܢr�Nm]R0p�� ��a�z$�Z(M�D���yedi �J������uX�h����$Oʆp��nL��I�ɠ!�Ao���fJ(&oͷ��c���d�I���N���-�S&��1�\�j�/!𰚧t�5G�n"P��/p\�i������D�n���_�}4���N�2a��C���E϶[r�S<�8T�����^3�?o(�������c� 먐(?�s�5%.D�;��T��k�,eeqF�#���(�fU���sEƉ��/���W�)��2=� ���4�uG�����l� ���A<H����M�����+�Z��[���E�m{�m4��AF�����ND�߾wK���C8q �Kw|�2�p�h&��2P���VoJc�=�h�>��Q�ڤ�U�ں���B���J���A=�T0K ]�~�0�ṱ��H�Dq�.�� �j���HBj7�xV�(Yʘa‿�޵M�8��(��wz��[d�03%k��"��N��Ϣ�cҚ�$)����~��5�/�3�����Z_s �k�uA̬۫��>���ZF�i��Wq#U��'?q��f��π>\^�H�} >�����ȼ�� �z�\����^�k&gQK�� ���j�rdM����w��N�`+v��	bkN���2�U
l[�y�:v��N�̂+�=B�0���t���Q�,F4/��^�辑��Zu�{�3q���z��?#'���Ϟѻ�������??~����0      �     x���K��0D�ӧ�>���OQ���Fv�g����� Y�m�,�(��F���=Z�x��Y��F���f���ۻ��}f|6�͈������/{~���qYKK�γe?���8"s��h+��L2�V���T:�k�K����y����q��o�׻
t��׫���Y��94r�)��ʙO�s�%ӈ�D��4�;�kz<�$op�v��Zq����9��O�#4D�S�-{Sur#y��o��2{Y[�/�>���)�^�	��Iԝ�SϚ@9%x1�ˇO]04�̛�&�7=sU���I���ʕ鼽:��D���Lλ;3/j�pkp�bc���PjT�#t���%;܅����]��Xx�q�a���h�Nۓ���Z`�3�c{��M�V������dC�ȍ�q `�Ȇ0��+���7<���w�P�6�P�k�1K�i�^�vjO�p������bP�N�%��;��ԍn�Ux)�_�-<���̸oO�v�]h럻�����W�������5�s      �   �   x�ŏ��0D��T6�)�Cd7�M����H)R�"���I2�\�*K!�� $:�L\.\��tfs�~%�v(�����~x�!Z���޴�#��0"Ƞ���/�w�lCd�"y�Co���Y�/���R�Bx�Y            x������ � �      �   L   x�����0k{
z���N�8�P3�z�h�N��#FwpZ$���,���\�=,c7���%����=�GU���      �   P   x�-�9�  ��}������+C�	����q��f�܅Y�T"1�d�L�Qt������c�5��z�Q�8�U8
 |���      �   R   x���,ILI����ON���/.�,�421533�47664�0�P��,M8Ӹr�Z�0�Z�[��X��`����� G<�      �   '   x�K�,�421533�47664�00�44�&������ �O	}      �      x��}ks�ʵ�g��-��@w�,=,GR�ɩ�b�ȶ���B��Yk�v�/S�۷rO�ee	t���k[7���J*|�����:u�+��m�����nX�n3�������T4�������\QT�1�n��q�uo�/k�M�T��g��kg��q?���C��I�]�1>nU�bq{���l��l+��Mٔ�,Wq��}����ŗ���{�*�i��U|���`��X|nW����n���vi�o+x[՞?��oR����ݮ��lK�TMQ:���flw˛a�yg�z׸�
vq>L/��a��Sz�7䌩��K�������n��gMi��/���ƞ��q��lS	w���xOc����o0�Jo���	��d��]<�1��yW[���!=�U\>�o�s�CcW��,c��ܵ�u�)���7�,��{��O��5�.S��i']�?V�/��հ��|k�0[4��a�����P!���4��	�����.�PS���)��¯\�,�,��mR�x��4�Y�m�n�Fq����SY�3���Y��Z����{����%��]�;�K�˾)N�1��,�cw�s��⛕ֺ"�
�䴥�^>ϸtه�������q_�ա��]>��6*�^h\L��}9�������q����G��DX�>]ʷ��T���L�e��7�f�K�����%)���Ͻ�<ꓗ.��mz��U�7i*Sx���Ю^q�������vq��������H��ܦ~��7�Sնt~�Ǐ����&|��P�T! ��.�)������O�5��PY8��k<�3�1M��G����(�?Y<L���~̿ �!-#�5����m�������'�a����v�G�YImF��-1�l�#��H����M�<M��n?�|K����'|�����M���kO߱��y��k�mޣ�}ex|z\�/cZ��*��[H|D~����+nX�*xW��odGD�[���F�]!�d��4��٘���&״��ψl�'z�7cq�CSV��&~ �\�M]��;�_;�ٺ�������*��ԏ	%J�1�u	��Ǵ�,OQx���	w*��u�]�%B�!˪����\n��M
�������?A���-?���P*��M�[��	����)�Ȇ��������T8X������툷;�����V��9R��8��>�Ņ�W�~x:�4"v����@�+p���-kJ�o���	9r���E7��Ҵ�O�]���G�{�:��b��'ŷ�͗��C˄�s��������4��ڠν:x��=�/$�����b��NR���C��o���YG��0�"l��_������������#�]_�]���⾘����������PΓ�؂�K	�h�����m�e�!�4�#����!�_=W(J��p��y����oOưе<�	Y)����$��ø��wśG�]���7H���ʹ��O��S2�<�K|�����PrL�RX�SQ�t��(p�p�?!�Z�#��t�k�@�]�}�iv6t����ԇ"�8fޅ��4��ٔ`:��7ePx$v���*���B�U�X2d���m3��-_��o)x�T�����8����%\�ŕ�ϡN�����W��9^�kT��Q��2o���HU��oZ\?<�멛��6�>�t2��" 7\�w-���6��!�#�Ǖҏ/�Df�JlS�)9�T�l���o��U�(�+�?Hz����m��U������焩��}{�?x:����pu5�ѣ�(���,c��~X~kw�ŗ��qx6%-=���LN�@
����u< ��Ý��ׅ.���Q3N����E��
�uo��3J\�^�7)>R� )�W��-�ʄ��|QU՘�1��p�#C]�@��o�B��U��Mpp��<W�g�J|(����G��ÒG4�Y��᡺F���(���%�NY6E�g��l8t)-o�����ᮠ:���f�YJ��z��q�1�/��l����KN>����;��V���*�fq֥ad��W|?�b����f>�:�7SW
����갼J�R�!?�x���E�˴�seG�Wt5B�_�&��L>!���i�?TU��:v�'JDv���t��A����7�Mp��G���|���V����!E�O�--����	Yך�n���T�Ű���ܣ܉�6?���%��ɖ!�t��G2Q6�%o�y��6�����
ٗ���9�Ԯ�g��H��>��aL�U���>��[:ٶ#��b���P�7�N����I�!���(oP�P9���3Q�-����
���˿k����Y��"N���#�P�M���&NO	����w%��`�9ꔖ�ye)������=�s�v���odn�3s��Vm��Lm��Ya%�%�ޗ͐������ LV�9�mB>8"�8��������s=��ߎ]~��� � ��O�c
�˛Q~#��ґ��x�q�-mz��9��0Gѽ��	�.�%�����T;��ە�?��rb}>�\/��jx�?�!��ZÙ�MJ3fa���
SIތ��b�7ƞ�.���.jX���Q�cɟm�T�xa�C����C��6J8F(%ݲ���g<��)�J�ɸhD=ܠ:�����ǌ\�v��r�$R7IC�O'T�4O�?�NR<S�5¿A���R�u�3�+wu�腾"�3�#����G0g�O/.��Ȓ�f���w,I!��^�
��6m�KID��v��,�Z�1Tl
+U���"��c��}�]����0%�Oc��D-*���@��E�z�>����yC�w8���n?��~�o�"0�!��[�=Oc�|�HW�0��.�Q"��d7s�[��-�����.;~$E0
5\l�w?r=q�y�o�h&���1�4,$��iǖ���֍1�K��4�Us�N��NQڄ�����nJ�S�R�=u
`6N��)I�χq@����9 �8ӘB��{\ޭ.��c��$ ���6̔��-�:��٣zLq;�~c�|������jy��\,H���()������������y]Z�!p�@	�s����̈ҳ)�+k${�����[�uj�?�'��1{�0�\��؂CM�ڵ�T�H��I���n<�C���P�W�y��@�+�Q��a�!��j�b3P���c�Vz���Y�6��@�R�ۖx�G��&=�1S���3���*�j��	�|%ǯ;�Hó�����8 ������s��^)�?Xr��m;��)k�7+H�>�8]Ř�r�}�N�{'���䣙4��9S�"�!���lw]�|3c�� 9,�v�(�>�N�����v���w�y�vBR�h�Ü/M�<�b����c*.[U��C���{�>�)�)U���AT� ^$���,�����()�u������l�}�k�?��>A����-}�D��iR|/[f%��'��Kl;]K���zW�����^�Gm�<N}~�kD�V�y���
�_�8�s�}�W�mղV���j&h0i�
�!���Sqq�?�/Ø=cr[�x�Z����^���Pd~�X����]�؉Aa�����~��T;V�bˢ�Q��O5�G0Ҡ�C��N�1I6��*cP|�P���Y8ŅC�yP�`ǡuY�p�zM1����^��%K�WA��ۂ�T��a��J��������\�l!�D��i�b���6�m����93"�,�>����!?7�b_����ceڵ���ŵ1[U�-}�);����t]�F^+���U�����,*��9�T�K3� ���͌X�1�p��=ar������`����D�r��ن�J|�Nq\+L��HNr��(�a�~,!].��x���N�BǕlVx�lzO]+�R}�iLM�'��7.����<��ه�,kjY�!����p�)>�o��:��!��%�)���Ffq��&8e�E��_�WZ���Z�Ξ����NK��yX�U5� ~���:�kI4�J��Țݼ�z�r?��f������>T�F�I'�⻸J�xU�7���y��    k;���X�rOX<���8���Xt#9xd��?��Ύ�r!�,��F�����U�w-(2J����tiy1����k<7J=�u�v���;�Kd����9J��Ajr�����=?�4�S��
�e� [m��#�	�)ޠ �*؀zT�//x��MB}��ܯeg#qmfؾ�[�u�����|�RS���q�5���ĺ?�ӻtDUq)##P��4��$^l�
�-9�wǻͣ�k��c�C���tG��,_���}!�a����C�QK�^>�N>Ρϯ�Ko�"ܑ3�>?��v�ׂo�S�����"�{�-��cq��:v
��ʱJ<n�|���fBU����yX).&D�Qu�B�T��<E7q���6:�vU"�4^��k"��M'�p�~R��f0�B�['��`}!d��@u˾��}�!��l�kpռ��ԗ����"7
���R00���5񮬢
#KU`7���b������V�����M�:�B�Cz�>����zN%p���Q"�ny�]~�`���f�tq���WCzQM��m(	v�U��V�a+��`����)i�Q��9E;�N�)��Hq�2[�D]#�o�=v�\$,9[���$����w2��>{�M2��:�I���CI��Z������$]7���� n�)ĺ뚙�r���;˘����_����٦���u �@7eϷ���f
��O�^܀2�pz��s ���֭�S9v�l�	�|=� ����0e$�o��BąCa\���!��Y�!<v�?�s��NY�\�dc�,�[ٺ�p^R�ذ�	?�8��C�׸�]�����{�r1��i����.��R�q��6����[5yCκx��0;3D�EbKڐ��z����\�fD\�N��[��?��~�g$11���n�܀��B���,/8ŝ����!V1���ǚ5��)V�����8O��R>��qך��lz��X~a��_=q�w��h�\�Sӽ8C�D^�ӿ����Z��S��x��.�UbUxd(~N���Z0C}Yx8���韜�F��r,��l��/�4���9)�EJ�`�J�[�r�*T-��@�8/�E��U��
��B����9�θ�ޱkʊ�|XxV�&b��uX.~I<U��$P(^�"�|��V�� ��g9E�ȿ�v�E�l�P�z��������^w���җ��]�%Y]I���+B���H�"�*[��y��%�h��crR9�ᆓ�o���O`[�L{n�{�����̬l�Hc	\���|���0�8���,"�Nϊ^�\�L>E٨t-ˢ,�����rƯ��"��	 B�^�-5ߋ��(Z ��b���"�m�����o�bg)݆�0�(?�f�P���|�=��ǐ��V�#�KN7�6˓�u������r%rC<!�CǑ�<M�j��W�x_)]#g3��rM��?��.�׿���A�K����ǎL�Z�d�|TL�.Fq%:0e�%��=V�����J0O$��v��)B��ǝ!6l�+�u�M��ȕ�H3��
}���{E�";�Ӻ�$���E�˔��S`���h Ԣ��L�*���)ƭp/�d����Wd�µ�P��ulg?L=�ŝ�w+��H���$��(����$��a�6!��2L㐝c2�*���?���������X�;ő�e]�A43�!��T������=n���
K�(K6���q�:=t���15	o��`���B��-�����F
)mG���le�2����C�j�D��i��A��F��xU��|E~�#�[���|�MQQLÌ��'5�gy8W��5k�`ӈ{�3�G���<�Y��� �j ��ՠ��"MiX�q��B���@q��Gք��	�'�Ս^�XJ��t�ƅ��h�6�IOτI(�=���� K�s�{��u!K%����gG���e�j���0b�����>(>U�M��=2�w#a���@2vā
˫��7�4�f����3���tI��%E�� ���r�c+�rܲԴV ��_�e7C��ZD'϶q�q$��j���R�g���J��[¨O��o$Y�K4+����Q���:��(�<��qY� �����E6��g�i�4N�r�����/��+��6T8H����2��$�Xf� 49���E���W�6��!��Ռ�
��1�I��j!�n̬�2�W�z';!�Yd�k��i^#��_�[�H,�Q�\ 6����(|���ˠe�U��&h~�T �P����8�A���Q���պd��$��և���o����9�g�b��l�,Y��sF~ѷ��;q�l���ؚ�ǵ=�����I���wz��pN��մ�<t�`��΄��K��d��:����4Ӟ�T�`���� �/�(а���6a���5}�LE�4���r��*�>�xB�r���� ����zwv�yQ6�9*+�>)~�K�����OOX��K��k�\L�M�����ʎ�O���F��|+��
	wG�S�D-�kd&(�h�"�s�Ǭ�������.�열�m�t�~^�`�(���N
dS	�ͧA涺����H���
�؎GAq�٘��ه�`���vD���	?S���y�iO~�8�@�nKǨ������Dc�yS�}>�"�P�3����0F��
cM����� �m���ZE����`�D:�2߿�V���Z)�3��?�ҿ;�*%L�"�F����nز�R0���縢�;YXq.��nA�Ԇ����C��u��`Ք2�n�T���a��(,74����O�d�����՟�,*<'��l�9&P��谘	���q�Z��:;�s��Έ(�ʊ�)e����l���QUG�
c�%!�綴ȵ�+���;�X��a@��d�����If�td�C<�zd)н8��T$�GY){�Me�1%I�\��!M����>��i�v�OQ�b�9YsB���Ni�Q�\,¥+�ʖs#��y]���2�mb�����~��6�C?3��/4<��0�Q�3�^�xP�H~J�]U���3���:���%�$�J#t3t�_�3U$��8@�vQA*�!���O�q?�*(�S�JNt�0C�, {�/�H����V�|#�\Cl�̤.Ÿr����@QZ�~�h�8o�KՆ�'�m�����P�df�(��`b<w����Kf	X�z;�"�UH������2�C����;ךo�s\��I���P��q��n��5	�n�k��`&T���9�����]pw�ӽ;�5$�����s�-f�B����b��I�@ ?5�$T��J�r#/��?����|e�B4���e�6m���/��22�#B�0�Y�{6;������£>�Գy��T���)���L �fYxa��C�]M�[(���;�<9(f �����J ��M��qGP�=�z��Z�?�7ଝ�\?q��'q_`c�p=��Q��L�C��5p�B����1!a�xԦ	�t�-�]T9�n��:֧
>UX�2!������-��z3����T�6��\��:��`�Q�+���+�sJ���+��|�b�ڹy�:�㠒�'�_��0G�T�PB����y��~��;z٦j�e��E�j��]��\:��� �bWm��q$D�|���s��Psi����)I��!�L�׺�va���>��^��šn�Q����FJ�/�� xGͨ�5�RА��<�)�i��^�J���i�5���8�q.p��*u/�'���s��R���8u�R�H|1^��b�'�Q��w�����]M�	Q�RC��8[�(��ҽ�D:g�����+g�$Ak=Cv��� I�fj�A�e��2�&�V4>��dR #���2)��\���)'M0��,�Әއ���D��O��#�a^9I������!�؟�����b�4RƑ]�����y�/li+$:F�,�Q͈S(�Q!�4�#�a_�d�����:�Kt����K�)RIR�:���i#���<�1i<�/��2������K.XVP���e�:�	o�x[�K�����<�樕K�F7"�SR�x��:��	�Ua�s���    BjC�E庣t:lSqY�:n�|A��}�נ�)$�{+�J�!%s��+��Z�j!QG��7^�F�O�%� �Yx�g�7�B�ଛ�^/�a�Q3��9�����5����PPtYj�s�se$��0d�`�]Zr�X'|�_#��̊&H��.�}�k�%�].I<p4p7����6���\y�5���9��r^{�Ee�i2{��ݼ����Q��"R�v�z}JF�pzf*�R)k6�*{�EM�o.Jpi=�ͭpg��
�Ԡ���پz�kv����aݧ��� �����(S�fЙ�L�����(T�n�ռ���8���
W��<d���'ָ:|,<%�<�
9�FC)���f�V���^('�>p׼��?���m����L�JY���5R��;{���<Y�����Y��b\+�`(��'�>>-.R�i�� ^�Bv����J�����9�֜��:�;�P��
�f��J�!��Bץ��/�p��)u�� y%Ne-<�H1V\qP���;e]
S�� ��P���	O���1��XOq9AB�v$S�(
�A6g��%l�(ƃ~�I�e^�^�f�^X k��1"G�!<(�[�H��9}W<*\6W���?�.��I��>����v�Uo��@�v᨜[)�X�[K�D�c�k�A�� /"�D'�m\+)��(��`�y�(*��Ҳ�ēwr��(躛I����
�E�3.��7d���(�¶�M�ge����jܒo]2����1��8A���N���P�����H�Us�+U�\3oq�
��u]YAל�̳a��|��
�L/T�GP�M��_C6��,m����M.vR.q{v�U��@�.n�)��;��=�F���n� ��5��G���S�[�3��.0eFz�9N��ٷ�u��5�y�t�1�\x't��3�ђB)�N����߯�Tf���XiɟP�V<T\l<[$ 8H㔍��%��*+ȴ�E��שO��%��l��Do�,�Ev�woa�Q�C������$�L�d�9H_�ˈ;G�7�D���Գ|�/�M��S×��+�*d|�k�����\�"��j)����l����6-������P	Z�~�;CU�Y�u�&S����*X��)�sb�;�&�C��)M�ie`��;���n�Q׮�����C�&62����-�����q B�O6�5Up�qfx2k�t~�n����jVs�I�'�d����N�/�D��f����!R��u:��qs�s�el�销`���Y���SJ��0��ߚ%]���i��G��gMW&` �ճ�[�q�Q�B|8(�&dZ�R�_��ڃِ�~�u��g>f�[z�)a���O4�ɸ%T��>S??��0l���o�q$s��'Y׍��Q��qL�P5��zVl���D�ZꂡW.;�E>~ax��w�DeS��-��~(b��lA���<O(R�^�H�+GႲ�5z���Zy
ԫl~�Jgpi?������ģ��a�2g�� �qb �[�ۗ#��D%�
O�u����fa��qA:�L�$�4d�(�SYjUKG�dK�CU�����<QH*x��q`����tҙ����S�|*`���@�CD��ˍ^R� �0x�|��*�^s&P�L�=#�cT���l�(��q��[��6jט�u��Hn��d�!�n(}%S:!�Ҹ] 6��~��N�0�~ �[�O+�9i�)-�ڮ˟�P�j`��6nn�6���Yx3XLG徃��,��r�\<~�߳�.�M�5FZ�q/�b����T�hn���}G�Viؽb��S�����o�=X�lY�$9��ꩤ�u�����mu�]�:����7��g��G"�r�G��#����|�	�"�G�ePIؿ}�,�;M功Sh��l�t�+��*[
6wJD��z��D	�s��[]0���-#��uwP�(��@�v����Y-�	��A�j
v��7]�^��\�K[����������N!q�)~���Fx$cE��ѕ�g�"�d�Mk-��5�I�`���i3l�4��yoQ	�� �&�A��Хp8���q�}�)��q��3)q
Ȟ.��W
K!�DoPz8=�W.A��K�d�憁�2�Y��Q� �ɈU�y��"��D��)?�5���J
�1��K��b��ڃ߀���h.��ҪT$����N��I��d#6�6G#�Z���hxS��>(�	)�|#���G�xo�>-�P����+��Z�p;��`˱����!ssU�� ��6*����K�}$PS��Y!�P�'�7FjO�y���č�c>f��qi���Y�?��J�\�T�B���S�g�g�Vg�5[��3@�;�w��q��a�)�28jN�j���S��Ⱦ�
Sa�9�[ɗ4;𞗄����N�à�,��������o=��|C�����C<p�u�gΆ���B��-S��)� ٲ���۴��&�a��V�(�e9�+%g>�F�����WՅ2��V��wÆ�k���?���2�4��Wr����B�F����1 �\��'��?/�^E�x��[̕��F	y�IC�'>�? {��N�����`�Q�Q5ERBQ�#u;�dyK$�Ϸ�������������gH���v)u29~�>�Ԓ�v�Z�%���81�?�mSp�C����k�Y��$���W|�~n1�6S�* ^Nds-?9:�T_�%9�j;����iR����̘.�6�N��s8�K�f��$�g ٛ5�9
��鬮�Q!�4��L���i�>�����������,���24^�����7�<�zK�Kb�?��y���Js�A�_�M-�	cuC�	bʯ��z���_��hz�_��Z�<$���%���P�#V�T�n�"0�ݦ�;�̶\9ΎP����Pw�O2R�R#�AÚ%��'��By���p�OX�eG��V�,Hq�1-��yz�O9a�i2�A:�>��`��� �8���Wԇc�.{+n� g~�
��()����jڟ�H'-p�R�
�;l{��?�G�û���+W�#/<�g�pX#�L�C(��R�o�{�;ka\��]sB��H6����T\i�� ��8	�WAf�+������6��)ر�a�c��K�Ө	�H'`r�h�A����c�p��U[�U��޺@�1!�:��A������\tL�Rz%�p���Z+��֛Y���2�!Hg�Ė��ʳ��-l�jK9�HX��J%����֦�|�%�T�?[��x�5�p)mMVT�<֖���ʝ�� H���H!7!�𤏻��}jPD��U��۶_��AYw[<���B���o��>E��-���d�訬M��:��b����i����}�,~Bh,y�n��^M�[dʅ=
�RN	R��0�T�MH]n☸\��C�eT�хЅ�V�J�iO^'R��}�EY��,#�,^z�]�����7`�=+����e�P��
��r�,���!){.�I!{Zu����$[s���H�"�=I���+��� w��m���0D)m�r��;���-�8�	-#Ӿ��~d���!_#�j�<Y�m�i^_ϴ���wm��5���
*H,ed��%!*����:tt�0T!�q��i{a���c(��J`���[+Tx��8����ۼR�m��cog��aݷ�m~����2��>��i!�PH�^����aT<i�g�)�h���Vt�B�^͘���%���v���;��p���;*v�'j�Z�.�q�E��e�Y6x'���o�G��|����R׈�%H4�V]��(/~;Q���i����^f��+H�`�x�ZX�/������%��0��)*�2S�7#x��"�v�$ҤyD� ��r�m��:^X���������C�x��<C樻��E��!���d����:LQMi��(**�`�=�X䯗6��aw�+$�9�3�i���v�%�����X����eu����iו++!6�I���W:tY�P����<�)��6��-ª�ڪ���r�O�d-c��G�,<%�daAA �  � +ĺ�R�w�Uv_� >$���\�xz���H�F�O��OI2P״;�n���'�$�G�m��g��u�lc�t\&~�[�c�Z&nWX�6��S���3��[̓�&�JuC�A\�p:�Q���^�����#Y�����&A��B��a\��ڇ�c�fnH���R?<k��~��AM�zˉ�Z��ߺN��U{����@Q�}cQ�Ic|�����b4�2��\0��i�#i/����?k�S����`+b�+iڢl�+Kk��R͎d��9N�Udi���A���'/]��c�ϖT@�D2���I�Џ�LJ=4I�(�õ87N�N#%$��2`�{F�����ST�F�7���S�ͳ�qB��!I�vD�X���T=��הN8���cu�;��|��W��d��V��W@:W�G���{�F����;�HlXS�����C��d��p�_�m�Q�I1B����>�S�v�O�}�2��F�Q9���*�yS!��a&_ِ
�Z�4��p$�� \�~ȗ�j��0ZO�
�=����㉅���Ԁ����:iD-׈�ь��a��J���݌���|K^t$9ƻi����<���&j~nju폤)�A��Bi�	�Nףj�FH*�O�4�4R�[�#{��`ɰ;���J���8�yAJ�#c�Z�o��;^\]�E���1iH�K\��0�#�^�od�Wx�rX���]~�q�-4B����������H�f�;�:�C����O�dv��j��1߻9�9��.ܴoJrvj��9!C?���U�(syc�0���b�m�RW��©�Ȩ�ż@@m��B.�M�!�D��F��i�%�i����
�.� �|3��"�r�Ș��;P���!�iT��R8����B����j�1����z��/֓`�UԢ$.�����W�q�j?V���ؽmf%�|Č+�ƅ�s�F�����;Q��*b#B�ل��	� *9bX
�RI�m|��	�#��i���+1�r͟��\����@��8'@������`)y'��S������U$�B}��i���&E7�Uju-\-w�h�na�$����<��"`'�iZ��@�4.�u�lKhZ~R(�%5J/@��[z~x�D�����H���kS.�),��x�'>K��CDo�����a�!p(�R�yK���Y���Z�,�h�*�:ʌ��$ ������{Tw�(HO�(�7[��m���	�(��F�䶤.&NP/�|ݸ�lQ�1>��s��x��1��f�<��(	?�B8"�[d|$aA� �.����I����p��z�%ŋ���~1~��nׅRQ�,�Y��N�nu�M�uyec����G���ؾl��h���aY#t��j�9���j���ֲ�M�e����c+�7]Ҍ��U]2H>Dn��}�-�]�o��(�R��q��S�VKb�$�k&?�(�&�
k�6��~:��%*	C�"a4c���J���]�C��WK����f��*ėFd^*Y�!�����qC�1V^G���L�c�M�:�u����k>[nU�Oy!�$�_���R�����'���ev^�iy>�
jh�����L��jLz�[串lz�E���������!.v�З��p?���s0t_�Zm�k!�n� ��a�������T�i��֟j�'�\�'�z)>�Zc�F(gHM���'Ұ��6��C��W�ϡ�5R1sUAm�:��l�����A��%.� |O�}_��\�>�jݭ"�z�&��M�D��&��J䭹���3۪�㐇�	���z��lr�R�K�0Z]{�;R>:I�g�A�ȇ8��9�z��y$���2�FVI����aV�yܧMv�Ĝ����+^�gr>.��QTd�$A(�)eJ=�6:e �k�L�!�#ɕ,i׮�{Aܼ�<J'HGz��F�L�2��Q�fʯ=�>SIF����Di�Q#�<�#�K�w�Y���H#�� :EW�oi�Qq�Ϝ@Jr7�/����o�k�PT�d��#��s9� �d�.89�y����#Af���dz�Y��6���s��l%���U�p&�Fuy��8'���8۫j�gd�Y}�rL����AA;�<�2v���ߺNv^�Y}�O�\������`d�L:�7GM/�F7�o���G��j�i+�L�rV��=.�����Yy�{��
���uG/�6cl����?pe�
	�?8tը����H������V�j�Q��x����7�u��N"�^� \���u�yd)n�! �;,?G��L�Y���l�8�������H�"�!1�aG���ٮk��p��Ә�MGG�j������h�lKD��
<��rm��������V��/?�Ȣ�X�1�MA�:������g�z�W���	i�$R:�4G�QnSv���*��qC���p�����dB��@Y{�����߅�&[x_
�Q����#�۴�E_2<9��Z���B��6$��|���6���|N����&R?r�'�ʏ�C��Ykt.�4��0���#a��@yP��Y�����/�)2�>��= �Ahr�r����F�9��P��b%�w����5�v�e_������R�p`*؋��>��i�����:Ɏr��(���rB�ϙ�h�Zb���1��@Y��.���Wf�{׮Zn��y(>��8���������Ona�̕�3"����{`����,���ؿ�	ѩ�f�ݔ�?{�Ȯ�vq�� 4y�$�#�bV�V��*n�PS������$�R�U����<x�O�F��C�]��/�פpK����J)t�n ��ElԽ��7c��Z���T|���wr�"��Pb�4�)ߑ�U󙂕��~���\ �!�^I{7�Qy�����7�GF=<v��șT�����j�i���<�|��@lܼ�� �sFva���5ԛ��5L���-�=��#��Rc=�k�{���������/I�oȽ�Z�N�O��)�x��C�^i�f%�>Ҏ�Ȫ�G0E]������_DU��Y;�1oy7dw��E��qB�8p��f�g/��
^��Xv���ۘ��`W����A���q����V�RRo�����5��ÜI�#�fd,xe�X����64G	�B�VAnM��u���������7o��$=�<����l�#����[�o
?��ꑭ�A����y֥g�S(_	�Ԇ`J�2� �A��6�ǉ�w����c���	����k*4\(�D&v���g}SU��)�17(��lq���?��_��w��      �   j   x���A�@��Wp/��Ɇ,o��V�wP��VT�-Y�1�F,m1S���?��&pBȵrU�QC[�T��Hy|��}b�~�.x��J�k��6~���ѭ�e+���r �*�      �   
  x��K��8l]u����y�/�Yz�
p�Y��G���|c�T��uW���d[���J�Zs^��Pu)>X�V�����*����d��O)UQ���b���(?��������TBu�k#J�BUZ�F�y���o���V-��0���*��u����ZY�:͔f/y�<�8,�t�
�i	=Z��W���Ԝ5��@䀥���{���(<�?�\��c=/ ���~�j�w�p�����ݒ5��_ S��R5��lx�?smO	�K#�3�;�� �8&+�%��?Ȯ�Q�Q�+DW�$��}D-$8 q�S�ㆿ?h����^�D0&`�kU������v�;�I S(���1�piA&�� ��$�b�:���jh��
��8�rn��[�c#�YC�T�T�EM�C�/zKQȡw}�̴$=��Bځ�Q��� 4��9������iO�6��M�(�OB�/�
���!e��!�����W	�
&�/���>�(-��w�&,���e��p�����w���.=D�i�>8�D[�fM[��[G�?�G�5p�Bz/�a���m�&h�sd�8���-j'R�8�c!�0�����Z��@ԋ���lk�t~�|�4�'R),�豐/��^��\}!�*9���}����;��{���S�Ѧ�	���7�y`ab�q�bI�A[���[��P��@t��hF�h;	��(1�!������([k�coZ��x�c�'���I�\��%/^�S-`t�
�XERIq@!o��r�u�}�x5�)��`mhw������cT�B�XXSAۺ�?�!H=2��+�Z?F u�W�A*F�8Ԯ�o��H�ؿ0��r� ����u��n�DE�P��PQ�?+�Rt=�r���,���R�����]����O�����Y<6f������-r��`N@��2�]�'�cH^+�SacLkJ����O� B2�f��[�6�-6�]l�Sr1�dq�r7$��[�u�z��YB+��^!f�gIS�XK�=�'S�3��Q�lw���L��n\aa�bI�,L����`�x��3�?�vA����>-�S���Yb�8�x���S�1<��q��� Wp9��o��!�&��YwH��\ �U#/]�!�����,���$~��Yj��p��M�A^��2Yx:i�G�SF3����9� '����.ec��N0��s�<�׍$#τ����@Ni3�:�ԷÊE_���`.N2��� ��<���&� �Օ�}ͦ9(zx?�Oc�3p|
��������p햛����W�zL�^�=���.���D��f[���L�{f�q4G��aDC�1�i��礡��O�{<k7QěOn��h.��y�)nk��z�V=�W;ϥ9����z�(4�M&��Ata�˽53��mLV�ؐ�L֕ȂpuZ�U'������k�<o����WܪC94x��"�2�����{�u^��q������m[5n���Y���(��@Z��r�����{8�x CX��Þe|�O3���0��NO���3E�ؙ�,]��Dy�"'�����3�}�c��2W�VY�BZ���o�=���D�|a�q^��<�k�Ӈ�<o�of�`���P
;:fKύ-k��V��+h'��|�b��5��XX>+����f#����Tۭm���=&rL�F#R�Q�xn6�B��2�吊O)��9��厳����1�xJ�#a��ϡ�jՍ���%�=��+ʹ�[[���2�ϳ�|����		�{k�����=�ҭhc�A��=��*F1���|s�i�Z�����Φ'��z�z%s��4�A����;��2��0F��ai��lB],�3���U���)�B>�6�+X[@[����P���2u�<h���:��nle�ߗ*�TS�UsϬ~�⌭���Q����՝���]q�w�������|������-1_J9G�)��<R�0�6̀}R	簽<r�aKT	Jk���mX���x?�m�ݐW��u)}�J��ǵ�QM�9G��#�݃�^i��~i��q�^�e�[�qU�]�eWu�U]vU���.+��U���rB��o]�������h��s��]kaҭ�XeJ����%C��){Ư���W��g5;w�I�}�3�N�U���
sj�kT���k�U<w�I(<�"rw��L�ϸ���u0ۗ�X��/��"g����-�[d����ݟU՘sKR�D�ϸO�w���7�B'o�N���Vs*��zD�r������7�������fjf��&/�����p�S�.��S��_i��V�L�)���P��j3W���y��g��_�{Zڋ�C��D��ͮ����F���ڥ
�>��x���&��;�����C%�"�=�ҹrK��`��OФ�j�U���r�0s���a�8>��Q�:��@M�l8IzS�e�]���#��y�����)����3�$y���V�Oό�\3�ZZ��)�ʜu�ې��Zy1X��'!�K�4o-Ȏd�g�f+g�������KmN������P剕���88�m����Ϛ=���gmN���mA�cl0� �;�?b֚v�9��vr8C2҂y�i��~�ݚ�v�4J��'�}���*�Q��[�|�����uȋp����o�3mj�2���q ��|��ݗ�-�_!|�*f����xr��|}��� �<��k4>-?�n���1����1�7�+�ω�o�'h߂�
o���~�a�|���K�w�s��SK4��s657�������O��ON'��Z�n��6^m�Ϻ����1.Ÿ�B��1����g�N��f�G�������=�9�      �   �  x��W�n�8>+O�S��j;�����I� m6Xd7آJI�H���b�En�(}���b;CJ�d[nwQ�@�X�pf��ǙO���������p8:�φG�h��`tx0O����������g�_�o���w%�ySD���Gax;`�kPL�����H�{���,+�����Г�Ϯy���ޅ �~�4s�1-UL�d"gutP�@��}�E�7G$z��If^�Ib^�/mT!z7
bP
��E"�LF/�V���K�1B�"�����Ϯ)F����R����4��������֋�2a<��:L3|Q�I�!��ҥյ����"��e��i����I��`�	�B�K�6���AK2��V"������|��z���xo�~0��H���s�_�t�Wm6/��kx�s��-�Q�N(Ċ��� ;���	�x�U��k���	�F��p_�9Q�l��	{ 5��0�m��/.�O�J�#=��G#d��D<��1�.7��*b1w������pI,�P�<�p�G�nC՛R!�%"���`7z-����[��z���4~l�-�W�v�֐�_�ٯU��Hu�M������M�o�B���[Ȑ�R�xU7������s[�P{��.��Y�q\d�#��6,��ߔ�y��O��ht��m����x��<��5u6�����FE��&��ad&�,+��	$S8Pf�@��ߍ�#��	����|�q�C�%�۪� �z�J��ՍzaEI����P��=�EB�ah��z|�<n�)��J���K-�8���S��@��V���:7�&������9����~x�ky�]7	 ��\|	Sl��Y��F�k� �>T	�Ϸv�����婠eeKf �j�g��d�0�[�Y��|)=�mW�Zj�MJs֒������}[�PuV�o�f9t��j3����7�%By��݁�U�j�۠A�e��װ�%�H����C�5%#%��XՖQ�L��%���K4n�t�[��Q���o=����Th�`�.�*�"U(����V�-��c�^F�Mc3�۳�S`�$���tj��/����U����Iîb6+h�G�)�B}�W�̟��>���V�?�Oo]�n�]�d���Щ�]b������W�;`
BX4ޘ��V�w	ڬ��j8kW5~�+/�+�OW��&Y v��a�, 7��U�+5`q���l1���M�U�-��Q7��|6X��iߠVFnָ\_�]���o\�Z����y�p��J�y%���%60i\�d�u-#�,��8Ê�����}���iF\x��/t/�,2���-j���Z���J*p5[��M:��n��nG��x]-P�W�BD�YH����M'�j����A���i���E���5*fDB>�ׯ�H�{�����	�I6��ۀ�������!         �   x���=�0F�����?��d���KH U�@'w�,E�:Z���gSՔ3��f�q�Ԡ�ЊP(
Y� �=�~8w�mx���i��o�/��S)f�(��}�.���C*)c�ZE&��*�HԲ��]���J�괼>�0�G���R��1�y� V6}�j�6x�?��k�      �   K   x�321533�47664�00�44�4202�54�5�P0��25�20�3453�4�60 $��8l6pr� aW� �:N      �      x������ � �      �   T   x�����0�d
z�~�v�Y�J"@⻻����#CU8�)��&l26�8���#}����[	�t%�=��+�D����G���#�      �   ~   x���K
�@�u�)�K��OϜ�M���@@���DJ������ZD���V�Y�bGьJ&s��G��*<o�x:�ܧ�د�c�W.�M� �`r�?tk�y����kU�ӊ�7�CN)-67�      �   �   x���1�0й9;jdǎ��Q��@ܝ�-!� ����� 3cf?�WE%��FŎD�Ӥf�dF�\ܚ��m��1=��|_�����tTiVd����:�VJqӈ� ۧ�c�Y��M����X�@te������ �d"Q`$i���Coj�i�      �      x������ � �      �   �   x����
1���)����e�I'h!XZ�͡�B�@���=��8V3��GUSN�H�H"8��C[��H8`TȺ��icnn�f�N�i�lw�~���VC.}���F�0�*��4�0}�qi�6��Hu�H�?������@�      �   M   x�����0k{
z���N�8�P3�z��uwұ������&4z憹:�yE���~*\ ����V�p�QU���E      �   P   x�����0k{
z���N��Y����%H軻ӳ��ml�`Z4��X�rvN�6b5���@N����]>;t��z�I      �   �   x����
�0D���W�>r�M���P#��J���^m�,t��p�V�� �f���D=�z�R��������-�ZQ�Z6T��I�:�"e"�j ���9Č'b/n�a|Ls�����v},�4�{��&���ߖ��w���Mq��t��m�陵������@      �   �   x���A
�  ��+z/Fw�F�^ĘV0T����r��Fm��&���4G I�#q����Y����<���� �����O�{���R�K�C(�XJh"Ƿ�b�����{�)�wu�uk����z�`e��1�&$;�      �      x������ � �      �      x������ � �      �   �   x�}��
�@E�ݯ���y�<�J#A���	��]��j�s����C��7�C��Ǣ�H�?��ja�H��r��[��i?�N��|�G��Z�@�^~A�B��t`�� t���ʙH�ޯ>�̱�*˺l[[�u��� z��9�'�H$      �      x������ � �      �   �   x���?�0���St����\.�
,888���N����o�V
���=�����"32 "C@\#ըj���$;�?.��%i,�O 	��t��Ͱ�`���20Q���[&���id�1��b�J(�0��>���j��6�Uwj����Z�YE:�            x������ � �            x������ � �            x������ � �      �   �   x���M
!�u<E�e��E��Yf�	z
CK�2�S��i�r1���
[�L`�"X�]�m�*Ÿە�Ϭ��Y&���G���P:��h<H8�T�Ij�?� Ȃ ?P T� ?P �&A�/ѳ��2���H������$��~^�8@~���@�A��R�(��"      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x���]���q6x��{���A~!3u�R���#Ҥ,�uS݅邦�0FU͸�׿O��f���>�$������|���u1G��.����m��_��/��O���Zטе��������/��O�����������˷��������������j��c<L�����c����9��֮Ň?�����l�V�yU.٘L�ɚ�yI��mf�Ӽ�Ѕm�v1]II�	ɥ$���5x��N����|�"�^���H�����BHY��-V���<>N'�Gg}g:�,)��'��q��������p����H&wAڦu1���X�Ŋ�m�����8�^N}�1�O�fr�R�t�C�u���x��������x�\�������,�9��_G�����0w���|�/L�h]ך�_��䂗�-G˿�y<��O���}�].ˊt��V}Ewh�"�Oק���r�iy�DkίI��}띦�Z�����8��݇i�WO%Go�J6ٵ��_�Ū|��?�.�y�oL��ǂ�#eIӴ]�����s�e���e����i�v.���㲽|q�M��dZ�̟��i���3��R4������b�X��/�����~?��Jʝoc�[Y���\�W!G�5��?��~�����lLK꼬=��5e���y�2�v���<~��Z&?�۸P����ԃr�����Oz4�i�s�8=z�Ol�ů��>9�P��-����;�\~`r������mLkZ�Rdh�"of<�O����x�J���w[7wfq7d�0�X��p�,���<���8��vVV�e8'���bu�;��0���K�#�\�KV�j�ܡ�������u�x���)�������Zq���ёB��w�����T�n�ѵ�*wh�*��x�y鯫�c��-��񇰜q ���Z�����~�p��.p�sI<�q��s3��;�o'x���A��~��rM��xr]csn��dZ����x>v�֟���aI	�xt]C�[R�Z~9"���f��	NK��O�kp=tZX���2�{�������k�â�u�q�՚"wh�͝���[�T��dE����V2���~:�������?2_�sp#�1f�M�;��P�`�/7>~�}���>�-߸.pp(1f��J}���ah��[<��_��4}���"�3Qr�}����Z�ʿ~�p��߮xB���\�t����oL`P� ��;P��֟���r{��{��������fh�;z����\�\��o\���z6�#��dl���������~����1X��r\���f�5M�;��
�y{s�V�2��$�e�k����3�����q`��y|�*��\'Gf������,V�gU8�����F��Y<�����a��pڽ��e���1��mOihB�W�^��'����{?�9E��`F�0,����'r�Vx{�K>M�󧑩� ��� w5�'��"<���y�ӗ�kB}��qX������_��i�7���Ս�E�Q�b��j�I�	Z�ؿf��?����}�J&���j�����R����y�,�S�]��%2eh�*��O��=Y׉+�a\3\/YT@H�x�`Ez�|连v����%�<���uT^�Jу�������\��~8����R?띒����-�-��{�����[}Jٶ�-��������{bh��⠼�����)�oR�U11�5U��
;��{�_W~%�aV�X|�~?�Kbh�_��?#X����S�x.!��66��`=4e���r�O#,���y���S�u�U�1�!:���is���L��W\ ���y�\��'��MV�(V���
O�Q�y�1�B�]���l���d�Vغ��\D>�	��b� ������*���N�aF��{;M���2Z� �A��X�]�7��bu��??S��o���I�Zrۚų�s��-�M�\��z�����OV\
�S�`�*��,/�G|ʻ�����qY���E�ˇ��-�C+2����x��ψ%�����X=Ln*�]E-2����'*� l����>l'+��͚��К���x���a������b~%7��mZ���sm���??�v4pw}M�6�hQ�9Z���8ӱ��ϟ���u7��on<���
Ck��zKp_�3��mh!ɺ(�U?Z�ˀ���	��?j����d�r��hf��Ŋ�0��p����z~!E׶]��"Z�ܤ���X�D.T��\�K�Í�O-��V\�5w8��C�O+���)�.�abj����HLގӼ{{����a;�Z�a�X�)����y8����g���b�s�ú��8�Y]�����/��H�Z��B{����Ś��1%�I�o]��=����]�E8zb#�-���a��c��p�~���GP�Vh1Z�e\�7�˫�����+�!_W��m���`iKQg����r'�|��;���_�26�[A/�\�5u��F�/��%���e�U	��`�fv������Z������O�����Ձ�n;׉��4���3�F��#�����p��3I<�����N�/�����DK'�e��(Dg�4�i�ܽF�E|D�z1��ϦR��KNm+�k���O��x��e|<l�����/�����V��Z���_�;�n�(P��,*K�	��r`Z^�9�81���<����,�ɲ0O9g�3bhEBl����@5�W�6��_��|�".d��00��w�w��KO��Z���۬�"��M���*��Sؽ9�<Q%�b�ݖ I�����r�K��s�,0J�x�W�Y�{�ܹ�Og\�kۖ\��e-΢��rG�.�i��6��o�Cq:D;���VL$��
]�qiG���+��wPE��i�*�rF����z�����F3�=��-���Z1��F+R���ii�����8��h���"�z���;�X����&��"���z2�o���zqxu���ܡu��3��+�~�l����D4��J�8�C�2-�>���) �����E|�I��,��h��=X�X�p��i���0�����c9� z�bS�-���_��~ڑ�V&e���7!v^}G����l��8����t-�0R���ވU�XQ��a���a�:��"X~!�m��"-S�A=,why���	���t��2_������U��Z��|2����G��-w����?�晅d���q�d`B�Ȋ��k�<:�L�h��[��������,�vro�V|�7(�嶹"�ڐ�&�E+-��+�x���x1���~����6ѿ���Y��fhM"���~���p�e]�(��1���zo�7�8��0���8����F�-;�����'���n�e�燇�'��n�6��t���P��������?N_��q)��**�K�G�c�&wh���[�}X����4r��k���*M�;����=�Pj�Z)�(�`���E��:�*bh�w9�.���G��Kp�B2ٲt�Ɗ8V��-�ʞ)P}3���O�MG���'�����TG�@y3V�J���Q���L"���k�A�Vؕ�4��������B�{�g���\��gn�0|�'D�4i-;-���1�⬌3����G
�ůf�S���r���h�G9��3��ÅF�o1\���X�^����H#J�8dG���Q%]�%����-����e�t?�yW7���b�x&�v��*/����,�����7��O�e���lI�Ik�ܡ�_Ѐ�x��qp<�(x�bc����_S�-w��3�oRY&E�h�Aθ�ƧV&,X��"���c�j��K����P-@��2�X�����2�1���[�X��������b]~>L���r\�&��% ��,]j�Ys�Z�T������y���$��,r���hEс:���Ȼ�}�6K�(j�[��hy�w8Rؼ͜&���ԗ��j�Z��r�e��[�w�����Զ��Q��&�{G�hE�y�)��i]��c�5������U��Њ�)3��$��<���(�"��_��ܡ�    �J�v�o����-�`��Ca��G�p�����i�y���ϐ��N�Ći�W���7���Pg���	�]�����b�9Z��=���c�uU|<m���q>�`d�ъ���0��͒��T+�,��QJ2-�,pT�_+=��H�8_$��rf9Z�3��]��a���A�4�'��L�<��C+ʩs/��d��Ii���0�1������n�ɰ:"֘���Ja!D��:�#���5��x^�Ǜӊ8�6�^
�yeR�5Z^�A�L��?q_?�2R���dhV�S-�l��=���_O�������t+
��Qi��h����8<�"��6�%� ���z��5���ّ��wx9\�#N I۴W��p��-���ǙR��5¬�"�Y���`�3���XF��b�a�8�܃�'��߆���.�Ѻ�¤�"�SIF1m�� OgJ���\O�i��qDM�	�D�d��hy�l<>\���@\�$��5Կ"�/�bg�8�F˯�}x�]\O��FNCV�%Vj�����H�ev� '��[=���H3�F+�Bq�	�hU��b��f#�_Gu^��X�5�	��gjE���޷Mr�UtJ���
�w�Fh�)�*7� Uh�S<��	m��j8Z��EGX�a8}��ա��֩�$�`���%�њR�а���.����OZ�qM�;���w�"�o��,"��)g8�����hy6n�|��)���.J���Wc�s��DZ~b���zVFWsD ����:p������
�a�\�^�g^
����T��2���1��0M3?�ԒL��R�=,�`h��~[z��K`\�1�.'�Y�H-ZꃹC�kf���2�1<��r"�+�!-%b��t�C�+!�~;���:^��L/l��]s�&PGi�L/C�Wi`4/�8�R�LB�|D-��q܋v.� w��ɐ�7"�-?������鸦#��Ir��"mivT�C��>Ĩ}�6s&:!<1-p�!ZQ�?C���H�#�����S6���7bh��+�7C���~w�M�3��-��g#�CX����Њ�~$>�_aw��$!Ա�F�\1�Q��*�m���]�7M�$B�`��*��A�����x��ˀ��ךDⱶ�m��{�����[���돔��!��E!�봨��5�>�p=,��6��)C�8�S��8Z����q j��(����!r��+��HB}��˻��D|¸�ų�eӃbeZ?�,�%��D��#b�<a&%�1����S�{;�����XK)��9!Hs���ehE�qv?\O����(�,�|n� ��H��/l�?^ȯڣ�N2������t>vZ����e����~χ����X1����R�TZ��^gh���ϊs�ч�
nȬէZ��;�#����Y�|Ɏx�%eRcZ�/��ahE���K������&�f烰�g�F�[;.�HB�o����'щ�/�ѡxpSC�|"��-��Ć�fX��,��xjSC=Z�������S�ҙ�8*���!M�a��5u�0��a����~6�V��dH��D\`�F+�цU�����rO��<��M�ɸ?�G��-����ցR�u8�O�"�j������?���*�OO_��¿�@L����&m����@�ooǇ�U2bgOW�E߮�2���o�4�����x\�� b���2n@���C�ó�x��H�8�����7$Q-IKB1�<�r=o6oDb�0]p���㬥�Z�f��d�~�o�i�r�q.8q�۶b+n�Y��0\D�����1�ب1��7�YG�E�6why\��i ��7Ca�q)=͝tl!AJT�L���;b�]�6��Ц��{�K���@�#�h���_d��?rm�!:�N:ÐG�R�0G+N������-�v�g��&z�e�ъ������I�2��
�EZ�me��ъ��~�ۍ��qJ� !�4�uS��-7r��,\��iE�C�k�s���,�b������3���q��H�&�OH�VA-\P�X9Z�*g\ �b�[�쩠ƿE"l��r�"����&vb�$��N� ��)HѴ�CkrP��h�<(6q1�j�d�	�SyV�hEZ���<�P���a���/i無�+����׵��+eK���G	%��h���/$���(�%F|BN6-����J����r���aS|������EpH��N}IwhE}wn1��@�{R�a�hG}C�Ŋ�F���������	Dى3U�Xi�X).C+B�o�<�ށ�z(��K�\CI�ybhŹ]�6^?�jX��P�E����hE�:}^8�� �X����-�Q�6wh���h�i���$FYB�Vf��4�U#5]��r���a��u�
?��Vܹ��,)tK�xI�~	�׬r�P�bW�-�b�2������H�yGڤ6��W��,e'n�[���~^��
�����?���Zu(�7�A����N��r�X������2(�ZL ��l,u�PeKS�-B��Ӱ#��`:���m ��T��=�h��=%&�Ɋ���H]ݲ6�;���q��.x!i���>�m�]2T��GO4�G���a������`�l��s�&�*n�=X^G<OL�G�k
�.�F����i�MZ�B��{�K�{�wG��i͆���F�ъ���I�����&l4��蓐�!�B�2��Ws�$}�oi�6��d�}��BH'\�ZQ�}z���$�Փ��!�o*\���c�%~����g���6���b'��^��������� |N�����e��*�CbƓ�LC��_���M��,M�V�3�E�/Nօ�x�<��_�q��.~l�S��Z���r�����y�k�8�U�Uf3�0��0�p�&��ǋ���{J��df,�ה�C+��m�.�da��"�K�״�Ck�yy$����x�d��3Aܔ�Fkj|��3���f�6���20eL��5��~��x��B��Ke#��ll��A\ӴF�5Y"���reSn|\Db�l�G��W����^v.�6?2E�3�z��--��w�*r�V�9'�b�~�"J�7V%�ι�e�B�p'(�C�c����i�u�������J$ʍ(n�X�y�=M�Ksiq��mѸĆ�5ׅ��� XV�l{ݡ����X��A��j�2��J�e3��m
{�F��S�US���:\�o�8��5I.y�d��ϾS�.C+��kb'6���_�В.6�Xj�	���5Z�t<�V����˾K�j�p�q�<29_��y;!m�qK�"�8pv&���{���Ӏ#�UAt��.�+�����:����Ū����?�'^��ː��[��(*�(/�,G&�x��y�Z充,v�Al��>���[`�.����4<�L1�zj��0�	�t�lG�k�%��~�~&���G��B�������u��F"`��D �4�E��x0�<mw%AI�Ў�l���K&�Ơ0�q������#��L�ǉ�}�[#6����ϥՒ8ZڟN7��@zY�&���EK�=��|kip��W*�<���yk������(N��-��ihc�UG&�Ht������5E�Њ�o�꬧�MN�6�,�>��Ѫ��D��A�LSi2�1�-;�Էs��?8�7�}�����F	����ik�C���2��Z�U;S�Yr�!�R�,Gk��Ӱ�'���)��8�lPf�9Z���R�Xo�E"RH�ԙ��9�֤�>��>�R1�,}��G��C �fT���(j��%כ�6���`Yѽ�p c�qrs�<i�č��2/�$��� �ԑ�h+慡�җ�,#�A��&�BXv�B8������������@��m�l��[^��Fk����|<$�6��X��(��i���v?�����U��f�!��t��M�L]Ko�$�����s�h�R��h��,��qد6�D��x\-Fjk9Z~`��m��}�z8��QN+��zܡVm�21�\�@~�G�!+gh�\�-�%{Z�����0�{5�7�"Y    �s��Ւ���{�r�j�o�$�fa���{��x��?4^�|�������5vCI�r���RX򜈒(� ΙBͶh�-C��U�w�0���ˉ2�N5��蒶���Ś�l���L�^��u˸�MR�n"s�;bh�.��%�TN�Q��3P�7-�X����V�4\�Kx:�J��]%ӎy��������U����Eo�h�M��%������g�DG+����fO��K�q��<�zW_�Z޷��j�^��s�y��"�B*5�)��I�=��p�,��i�l@Јx4���̘�R�d`�˽4�6��P$yos'�������+W6Ck\j��4�:�f"��R&Յ�Pք���y$+a�l����3Nܱy�oJ���hՑ����(&q˖�=Z�(M�-��dch��:��Y�T�nh(��,[�hEL�wsQx�s�I����{��;�����ݸ���;�!(���9Z^�������~t�\2"���Vg2�hU��qX6�9ڝ����4������Ȳ�buR���(�����}�-��D3)�F�Ҋ��W�4"j�LC�u�c��6��8�^�2�<:����u���y�~A�J9��ՐF,�V�Z)�������pC˽�F+&�	r���:�e3´-�ú����R�96-Q6(����ɗ~����_V(k!L��Z^G�U�n뷓��/�i�H��^��Z�,�3���&�;Z~'���|A1�-w~'��5�!!<�6 �h�h��U�CO��Q�1(YX"ME��6r�ߦ'�	 b+'�b���T1����<v>}���|=\t�d����@�1.���V�h_�����:?N^kŷCl��	J��V��1���yR���i�J���f�8ZnW�~��h��Cmc��MM���1�<�1��~�����jXZH����AiY���"Z�z���"-�'����d�娴�s��U��(u���%&9D�FV�``�#����q�G��8&���͔�JG7Gˍ��8P�j?�i�-�،Y����1�<P���#L��cY���vPʙ�܄VeV�h���PA�2����:p�?S�7%9D�?Y�K��
�{��߆q�\�31�����tN?1wh��r9̷��㪻�C �����ɝ�0�<F�p���z���uh>%���!&y�������������j}�-yw��!+cCP�'X �ð�w?O�y:sEr�)f1Y�Z}�����bn(�FT��u��)m�-����}?M+�Mh�g�}�:�Zm�G�?�c?�T�T�ič���zr���?��Go��m��F])����x��5���<e�]o-~چVj��@���4u�Њ4HA��_i��҉��!��AW2R-�vKEB*�ӢC�������3�-/������������;�kq��,�AXG�H��r��D��vGg��o�QR��� ��P�hM~�D�O�c��i��dm�me%��hy;����É��N�c��II" r�9Gk�E/���P(A���P��Z��x����y�F�ϥɕL4�bۚm(�T:�8ZcTN�ݻi���T�9�!*��R��,���˦ꕙ�ɸ6y�b������
U�2���;#���O�[���)3�<��u՛�����|K�뢤��X��q�����\F"|��2�`� �5��:�7�Њ{y�Z�e�����;�к���C{��ه� 2��naI<���4����֘�[����͇_��s�A��f<Q �����W���d�0�C�Eي3���}Z���;���~�V�q<=�O�#q�q��M�i!9Z~|���[w&�Q�a����@=�I�z����%i�0w���P��u=�м�	�!� XR�9Z��M_�sz;̇�����lО}���r��O0w�u�P%�Ld_R��<|�F���O���B&T��FO�3�@�l���s��q��~�O������0��|�V�/�t��z'B�E *;|%��chy�B��&�f���i��8+��X�7��bM��[?"~H�|&�i��d],-�S�
C�Ө��|�KGT̫�N��!�؆�%=�Њ���k|߯����H\�΀�@\NJ����5�ix��~/���>o��24�u%���Z�#kr��0��a���8�;+6�xj�	V���I�-����x�,��^E�]��bWZnq��ˊ����\�6"�_>&Q�A��p�q�����>�Ġ�"-���n=����Њ������C��[D�	oW\�aTUj�-V�߯��Q\���ˁ�:\ �֚�������y�{%0CI˨�����������\�߄�`2�㔌rG�c��o��u��86��g�$θ��М�2���r/�4�w?�ӹ�C���r�+�U��X���Z� |i冕�ɽ�����5�Tʳ��OS���Ƿ���{wݯ/%q�me�%",�RNC+�m�>��@�81���<��Q-����i|�{��f�@K>��١!.%�85e�����Я��ҠIJ)�I�麒uah�K�Fw8u<o<���Vv^Rc2�hizܡ~�Nʶ��B".w-C�C��� s�<C��C������!��=�~�+�����@a�!�YX�JM�;�ܬ���?=��������ފF�e]Z^�>N��#��aN~5�t^�6Z��Z���a?�v�O�j�9��Eͦ�S��b���Z��(f��ea?].#?��.(��<��JY��Z0�Y�]h��l��K�IM�;�ܑ"��5�M_��TqQ�*��p���*�.C�O�L�m7&���);�<��dm������t���e���)��B��j�w���o�r����H�~�@�:N31�HD�����r����|W���6��&�N�)����%����l+��%�P�A^��YU�;��Y ��"�KJx�6GѺ@�&�q���Z����q��<GR�:���d�ѩzn�Њr�)�.50�a��K0M۩��9Z���a���J{���3/c��Z/j n�˔�:�V���λ�x,��\�f��|��H�*6G���x���"�~�5��qtYnԅ0x�p��J��>��˶�;d��vNd���lE��Zn����i�m���KWĥ(�J�֔؞�嚜����[�m庐+�z�P=ئ��V�Q9Z^/��ZVäD�@H3]p�>!�V|�/$�2��%�l8�}��3����ʜ��oi�:��fa��ա!>����r�aY��v��7��dw�%�Z����r���:"��h�YX���X"�W?g���q�ҟ^�����<͌��T���?��0����4-ʔ��h2&'�S�����|�h�*�^�iuT�YΧB�7�>���������2�a�vO�k1[9�
y~�R��h�6�/n�~D�[V\L�BX��)��=X�-<
�����b�YTH�n�r=3��ҹmq�\0����*d%h�ws��[��q<�~�g"^��e��B����@(wh�ۙ�yE�_yt����)����!�*������]���ȧ�փ0�T�n8Z^���~>���x�N�r���Ç�}������r[R�#g��Ⱥ!��� �v#*I�����S?�Dj�.�A��n=ȣ�#���;�ܼ�N����y�� ��Hs��h2X���	�)L\��ӑ��|�*�xt�j]�-��hjQj訳�A��0�L��chyz�_X?��O�����)<���y��M�V�pt���R� J��!���.�IK��𜦧~���*��t�h�������:��+����xqFc���Xn�~�0|�÷��sl)�w�6��
,�ubh����lU���j6�hv��X)�q�&E�����z\)��1/�5�Q�9�����GY��2�s]�[�q�q���<f��-�b���C�'r����B�(��=o������ْ��5��2��њ�=�����R>Iy9�%���r�����#�������
q?g������u    3��燇�o;�miݢ8BQ���CM�;�X��<�zx�^��h�d2^��	Y��S�,C�K�Ӊ��~��FC�L���b/dQ�2���rc�,�'^��e���2�$�	�	����[���7���R!f�"�C�����
ò��_�pܟ�.��e�G�%Q:T[����y�������'�bK�ي󉐆�B�Z�\�>�Bzi�6����O� '��������er_�b�ޚ��e}��e������i??Nbn�߷��"��H}T.��?�[��~z�z$�}ke3��E_��hER���T�{�X<E�ȶ�&p�eҝ�l�h��{��ĽZ��}��(�yTC�{��=`�BFw t^�rC!�r!݃寧����g�D�|��Gb(���B+70��Y�B�^���;�w����bb�rdhM��z�K�6��	��H(SXԾ ��{�����H��i�Wυ6�Ѧ,NpR:�8Z^����x�}���|��Q����
��R�״�C���m��if롉�֭I����jM�o�\�ɱ��u8�~�4��M1n��J���bs	h�.�<]"i̖:,����p1�m�������,��FO�w��,�xP�GV@+��#m*��ޏŔ	T>4n�Y�*.�VH�	h�]9�Ҋ���?�ugͫ������C+�$fJ:����.��3I'�b�op�
h�U8>���i&�7�ò��}_�m{j�܃FJ�� �3&;⌐�9�myJ@+�ޗ	11���2��*����4�4]� k�x� Z� �m=���p����5M�ö;m�+3���01i8��8�ޚ&f�m�ق�����ʌ��W4��ǘ׼�²��a�-X�\�O����P��mZ������i�f���r_��wo�q�EG����EP���Њz��T�����扐��M�]�ҶYJ����ha#垼ِ���ۢ>�;�<,�}d���hϕ!���~Gt���+�xK��/���YX��S-���;Њ�2?�M�)0��̦��k�6�-���V�d�<��'L�20��4�0;$��\����4�W�-1{�v�xx]�ڰܷ`��?_�Y�����xd}<U�c��r�?O�'����W0��lgϯk����ރ)ʛN�����uY��:����.oM�;�"�D��G��7޹��Q����ڨ����N�/t�'Z%5se:��֥�q�i��AyE-V�_{�S�#*�h�O�78Eq�w��xh���m
ќ�iӑ�*
�������{�mZ�p%:��Ѷ�"���v��V<Z�e~��m2D4�l�J�������_КGEn`L���=�BDy�����-��Ƨ��.TO����s�&��c�v*�A�EK�ۉ6�Pz�t	��&jq"C+��<�v���<~��h峽(�&ji�T�C�](Z��	W�����^%Q^jۮ!��w�q���UK7��ܚ��UT�����鑠&�����#wX�C�l���^��ĶuP@+�e�-J�����F�Wa����幍��0
K���w���EVG����#
h��d��ǭ-"f�nWѽʂ���5Z��O�q���@$,q@�ic^%:�[��#��ە��x��t���#�EL�7�o�ѽJ�k�!Ck܄�~<m;Rh�O>��^�]�D%�句_�z��a�����s�U���[J7-OU���|�5�D����Lt�r������c�2��&ة���\�/�bc�$P�hE攘Z�s�mu!v�ѿ]G�*��Z2�����2DE�Uo?�9�]I�*�֥l~��-��b^7�&jL�ۅt��h�V��0�����^����O~�o7ҽ���h�5e���[`��@D��D�)�5��8*h���*�)AоˎF�$5� ����ciI���#n~�t��a#���'kyK�Vd�	cq�ʋ���H�*�Y�3ůch�wt۟�a�3������]I�*�벒jgh]
�v:	��)9� �xrS�Y��Z��Y�F|+�B}o��ݕU�D��>�;�"��w��>l�)<���Ci���ZQ�J���=K���"�4�.��M���ahMr���ta֌J��x/��7_~�nj��'���'����	q���D����rS3��O��������H��\��qS��T���@ӡʁah����t��l�2�W_Snix &T<���鶳UZwjh�W}~Xq��v!�Nr(7/����Z�m��c�{{���LhІ��UZ^���.whE&��q���Z�G�oX/Q�mp��>r���]n�i��8�l.���@�:{|�N�
h�*?�4���:�\;���(��P>��	��\�I��Ϛ ?�Ȫ,	T]��rKw\�cV�G�����t^!):��hzܡ�z�OO[V�l��p�t䯒(G��9Z�ϝϸ��øJs�~���m+X� 8՚�8Z�휇g�dg6��y�vC�*��� ��?j*���z�n�=Z���a���R�hE��<<~�rdg��n�ѽ��SJ�3oP�6����(�FN0C���O��r�2=�hD�҂Vc�Nl&����.$��z�����/�ǉg03|9Z+��x�*����\�Zٸ�l�ذ�fo)�dc� ��.D���܉ꛓ0�O����l`,�6*�n��Ї�~�{?6O%�ۆ��U��)�&wh��|��g���3e�b�D�*ݰ-Wf�F���U/l^XE`�ĳk��o�����䈋�{���2��]=q��x��X�)�VW�-��깤�����Y[���8\���(�Q��{�'�ퟻ��=�k�WQ��R��hu��; c�{�*�y�4�2�"�0\.҆V��;����U|��ъ��ejr���\J�dk΋WY�J��ˬ�w�E��!!�V�)�0RU�Z~9�й�)WiᲥ_�r��S�n'���<<,�px�5m<��!�7pb��jZ���O����A��1�K��]P�VqϏ�y�fl���YN^)�I�6(�u��GbD�Jy�u�gF d���F_��n-/k^��x���i�@EE���z`�UZ��0)�u���S�O������oR�F�V�~}�庵m�Ka�ÚA�E��L�Z���7�wt^��p�,m�:1�$5�����G��w�'o�ܢY�o�fA@+��K/^g���e����V)<s�*�`X�+��Omk��z/��q_��1���ϧ�eK�O����K��Ah�"{)����R��hM��������n�$�NKא[���p���n?fbHζN��C��Z����~��|;	�[j�Gw�z��4g��bZ~`��~�o�i�����VvU��wA��Z�P����@�蒉��Wi�	q�`Y@k��A�m���m��x�ɕPC+������7ꖣU���Wia�R��hyD8ю�_ʄ�Q+V���h��;��-�t���<}���F����7DY�;-bh�*/�d6v�ȁ3׉�oCl9�n9M�ܗ{�d�B���|�EY��W��]�֔���#�n���3W��>���ǈ0�����bu~8N3�KT�P�LM�^�
�蕶i�V�����m���U���&����Vl/C+l�Z�d|�8\�>��U���2�	h�W��@M�g�R������I�5[׫4g��s*�5�}Osg��u�
����lc�3�XZYH����Mz&��nͣ�*��AM�0��0��}��@ ��V1��Չ1�(j�ܡM
�	�����v�h"���D-�V���h]��	���Q��s�&J��z0��k^ܨ�jc���=�p��r\��4Z����N���J�/�HĐ>Ӧ^��܃�#5��n�������t^E�i��=X~%N���p9<1���}���;�ܷ_(����=?��Z$s'�lBZ����ghE�����g"�[��H+*��6m�k�����hy��+����+�*�K�3N�܄4��p�"b\HWw���P̞�1^�!��߮7Њ`�:�r��^�9͑\9)`�,�Q����mO'a�-���X�ۄ��    ��39Z ,-�g���3c��.'�:+�r�լ%+�,��G8.�V�"qB#,�� k�UM�Њ\���_O��\\Bֶ4�'���4��]�|@-����Rꭁ6>e�ذgiUҲ�-����V���ႏ����WD�Zɟ���*(	 �GD�@�B�I�\���m��/#�VX����;E,������WQ�N���r��ŝ���{{��pۂ�B�J�`�5��G+�i?,]Go���:-�%"� �[K;O�2�ъBD뷙n�@t����e(ZR�-C˿��6-���21�	��L�ٓ��m��SU�C�҅���G���rc(:\DQ�8Os��2why�J��_����O��S.~2����xߋ��Z�M�)QBm����j̰���њ-���V^��p|���XB�Ե&)�.,ep�����K{2�"��vT��8�|N�~�hyP4�_:�W[��
~7��ă�ڹ�j�X���)+��И�zCի$�6%��bE~��'ؕi~�����B?��zEի4x�q��O��<����#���"!�T�رY�`_��I�煘JT�Bq�)�aiN���Zn���8{���!�چ-�r�2*����K��ׯ��W��8�)H�K�,)煡���{nIz�K����,���h�C����v�l��DO�زI�ê+v��I�/#�i���)��Z�X����Z�e����p\�)9�~�z�B;� *z�p��,�V,��oᭈ}6v�E�)�-���鿌ü��LT�3���&Km4��W��\~���Ӫ6d(yJ�E<��J�U_������K�#Gd����+ꈞd�Ey�����8Z������t�w�������Kݚ��U��(yB�ָ�4>��+|����i_�y���4��i����SC�\�m�T��vQ��>p�Cк����0?��2�«D].b �LĹ��C+��~�m*��\�A�)ۮ1-��0��Xu�NK�B�d�L������вP�ȉ�]���~��wD��Z��
qDu��s���?N�oč~9\����7Sg�!�ֽhq"C�����-C��'�#��֊���sx�_�)��"��&�J��ܡ�I�cO��������DQg�b'�Zml�V��\Zq	|y	��b��qOg����`���50�������h-ޕ{T���oĈ$6�Ҵ�њ��?��^/+�B蒳!*�v���1k�#C+zJ�O��s��]����(�|��{��}������8�	Ƥ�Z�WY���:��E���ž�<�j�H}�I.\E\]�?�;�&L{���[<s]p���t�t�c�WZQ9ZQ��5l�#J«r�*5v�O�)r�����0l(�sZ#���7�eahy�g����/Ϝ�8�������ք;���M�ZaTn��Ǉ���xF>/[�DQ���������f�A\KU�r+�">/�埣u�����0יv��И�xd3m�3�6-�f�g�bm̎���G67D����s������/È`�哉�B�|rn`l�VX�Ů}��%k�g�;f!�<��aq�D�V�6o�^�����f�`��F�֜Zbk|?}�9,t!��(�L@ZL>k)B��G��j&J�������)nC�b�2p�����<��q��qx毈����yF]�@�nQ�V8M�GK=����5͔��.İ�D��N��s�����ڟ�ӆ+��>ɴ@�o���Q@+��y�т��UB�㭃���Cq�h�ܡ�</����D��-��*������er�����nZdY�L���p��zi�}�1\j�iI��[O�Yah�G��hG�$gPm��-���*��hb0J������t��鴺�;DA�(K�!$9��2��������K��ϫq/KE�.��8jZ�%��I���KqZ�]��㥼���T]V�N9Za�i1��᧥����EY�8Z�gO��y��L��8-9~9�s'�E>�9Z���-�-�|B�!���9�D�yq�Qc����ъ��K{��
?�}��ϲ4�rR��p���.ˍ����ZًYT#SJh-����ۧ����K
D�E���ڵ������Ml(̠��ye�b��S�m�V��_y��E1U2m�����&SC���Za���O����,�q�XIڸ����)7#C�?�	���� 3�_>��B)�!��0ڝ��bM�1G?Z=���6K�<$9rj�'r�VX��;��7?1��Z�r>����`h˨��Za�N��e��|9s]\��0�貸��i�9Z�����;�o��x�%,;-�����{�<ӏ�sz�y<\?�2�L�"�!fnM�;�&��Rxx?�8g�Wz�����৔$Gk�y�_�	�-ޓ�m�,��V�8�hE�����|�?�wd"�Z�x��D%����+��}����mK|'����:ڛ����?,R��p0��i\L-�A9{���|�<���=B��*K�Jn���і M�;����w��E���M�.4�P�^V��U�3���d&�e*��T����e��2�<}:>���HM�K�g�2a0�lg�>bh��D�evT�N�j�w.t�P^$��@t3����
�r����_Vj���X��B��Ҁ������܍�2p����p8.@+�6!qa�P�C����ow�C���uM�S����.�w4PD/O\�����a-��f`Z��[<���vYW�"E*��)ݮqxyʁ�����: t=�\�-�9�m��V��Z�P�!�$Nﻰ�L+	�>dk�m@��Ѿ�|�0��b���Ʈ���?Gk��Ǘ5I��s!�鬤ti;����Z�G=�6�w枕����rF7ҶD�a���!�m�u.��t90���|Ҽn�V���^������Y��(o�`M�;��o!n��54��VI��&�h���Z��&F|��cu*'q� �"�`-����r�q����_/�֪xKu�,�cCᾖ�`hE�e����^G�@1XџKMK��:-w��S/�N8����� �$�O�t�C+�ׅ]w�is->fq� �h�R��h�&��̏p��\���ʌ��E�`P��Z��S@�m��P!Ɍ��EM�Z���
M�2������h/�ԣi͘bmZ��?���ʌ��$�H�	Y8F=;Gkb�n=o#w�=O)>]nhN[���h�o;�~/�����]����4���[�q��"�uw�r#[gDz,Ȣ�]�;�B�e����#��Z�*e����-ք(���n&�|�4H!k��D��Z~"2��ft��MO\���۹I��Z�����N��h�&�m�c� H�"�m�OK��p��[��=��lF��]���9�]����ɧ��q��MpdR���A%���G+�~��d�W��D� ��ɉ��%�Uu�C��xڟ��P]��&�Dv,H�nM�;�<oz�?nr�%ܰԉY��F�)�X�	�;
"e٥�$e�b[8Z�9��<���[�&D��RK� �4-�I}�V�>~�Py�>q��ڮ��s+K�[1,-ܿ�����auf�����ȋQ0}A��h�"��y�-�|�ޣ�� Nx"�I��.���A�kK���ے��_t���i:xhʗs�ڞ�v�D�B��V�H����ğ�t�C����������C��@�a�W)T�-�{��ӄ�x���@�n�g[��6���Ҙ��r7�\n��#A�4��N�LAy���(G+.��<��&h�q�A��&�+!!G�ӵ�����ȬLJ�0���"!��hS���Z�{���}��8�eO�6Ԝ�PKp����I������g�!,Ӧ3�9`hU���|��Jgq��;|'V�r��?w�i��}���na��9�!�����h�;�q\�G�����l['�A��;h�|C-E��(� l���ɕrؐ�RW��-*�ӿ���%��IQ����KF�<ZQ~.=.D���4�WR�'sC�RW�g��&W~/�����T�e�`�)*_C+���ݴLb8M^f
�,b    JT��8Z����~��㱴|�2C0$�D�M�;�<�A^�i�v\-�*!w��r ���g�s�Њ�W9��_?O���ҿ^��Da�h֖�U��x<��g~��(['�:@$�Y�l��h���0>��q������s��)�eR��U��9Z7#~��������t���P��4�'�VX:<��z��4rM��1r4�:�>�?���FOՠ�pbV%�ƷK�A~3pœv1�<�8_�u�'�
J���5D�ܨ���
�H�E�`Ǿk��Tυ��E����U98bL���BK$�8��A	M�)�TM�������{���M捑�*]C����ehy����y����,$�2oD!I�<G+��T��~��>*fa��� �e�j9R�Vش�x��#���J�4�.^���V���|��N�ՙ��%k"�U:\s^�W�hy�>��qxY���m7��ϋ7`G�mu=G�o��� p�i@T�������L�)��,�#"��:ˍ�>6�����rMn�ߩL�U'\��_J%�7`�%GM$�.whya:vdp����:���&Y�p���њ��<^n�S\�/H��ei!���;�ܮ�P��O�a�JN��Yl˃�HT���X�}��o+��-5�Fq� �R�Z_Gkn��vYK�t ��OljZ�ͧ<��[��Bc*��0O��gOlj�Ry$-w����q�A식5��M��Ni��h�-�iY� �o�����N4RC�=^��Z~R��B�q;M+�ۀgC+�;�Ԧ�B3���ź�0,���������$x�b��c�ה됡N�g�?7:3�e�S�2]��.K�D��~Kwh���L�0¨jX�Z�g Hˍ1]�t�p���h��*t4���(�ӕ�t�dJ)�"}�.&oq�	��:�Gk�v���{�Ɇ�,qT�9��5�t�UԤ�������!>�2%0$E��P,.C�S�o��q�IlD�	�|+ە����6�r���N�3�g���hUB۴�;��r��J�/�y�h��i��?�,�b�uC�V8��i���z_LH}t
d�2���rM��c�i�B����|!	��(Y&�V�;��r�]Ʃ�bCÏ���;����׏�~֧6�f�$7�B��������HKԤ:P��ì�u��j+�8Z~���a&&�a��E���ڮ����U�9��W��ǿ���;�����n"}��B���r��t��V���2}�W�$\m׊s�"6�1���L�юV����A�ىѾೕoe��8N4)��?F�������֋+ w"YM�;��G�hrK��Lk��#EE��;�ͪ6whE�c=�j���+��?}�Q9�$1>
��C�����	��Ȅ6��!s;����R{��hZ����h+�w���Ƶ��%�e3c�Y�
q��9�<��~��`*������&tD�)s�V�-q'��-3�\Ge�$E�ރzZ��
�����i���įk�*e�Nу�D��@��Ś��|����5
b3�F\s���F�7���At=_&z9_xS�2AL�=���2	A��HZ^��˦�p�<�le��5ߖ�0�ܯ;��B
����L\F� ����>�V\ �y���lZ�ȸy�fqV	�:��B���b]��ߏD7K�`<1�yC�=��(�b�-ؚ.whE���]�������B��3 ��o�P�YT��C+�
y
[Q�#&���%)�Sv��hs�X�����s�;��%%��.�,A��]О
C�uic��Ǯ�\�u	��<��zG�x��ehE�j�6H����#��!,�6+C�-�����=5�nPx$zs��-�bZZ���fطۉ�}�*	_� э�~�u�p���V�,K��s�]g��Vܺ�_��ʽ-G�ô��߯9x��fvYl��,����1���<OO�N�a��&׽xhCc3�gM�;�<Q8��&n/���6��p���W9�-��_ִ�cx>��+ZoC��Z�m�V�^6)�vZ݊�Qϋ�p���i�v��-����Z��fU[�Y�ɣ��q��R��0���f�?E��n^Ib��C>G+.�ϻ�^���"YH��x Ꙡ4i3������T�Ώ���-ߎ�"/M �V�^�ъ�2��v�]G����1�yߕbTZK��gbx]�Z(_��P䥁<k�IH�VT �/�����OǞ�e�6A'1hMkS�hybc�`���:^���f��� vb�q�Ҵ���Z8
�8���Д]jEZ�@�3�C����@uD���<=�� f��p����:Ĉ�Ni<��ҹ"e'�y������\�q?m�ih�<Y~9���ѮgM�;����s����C�Ė��zUl�IQ�Z���K#�f���9�H��\3G˃���yY��<r>�3��V,����(Ee������@�AG�d����C���.&��-�ea�{;���#�n�J��"(�g�V������:O����Q�?��65�^��-3�"1��Se�Z�,d��)�"&D-�`hE����/|z��Lq-�LV$���V�6��I�3#��L a�:����������q�m�^�uQ�Ur��i&������t"����e���8Kɯ .��<%��bq�<�5~���yV]��!�	���*!��?�C+�Y�\���|���pp�i�
�'WZ�9ZQJ<#d~��&]N-��N<���"��4�Ck������L���ckQ&Ȫ�O*���P�e����*z��t�+�6w��k���4�`~�/�a�H�5\���Zb$6I��^t)�h�y�����r9��ׅ�i�������˿F�=��q<
�ġ��؞�ENS�hEo��e׈��6�[�IT��8�ъ����ȎaI�$�%t-�^^������<B�[��uB<���[���h����c/v� r�t9��r'�D�F+�ve��Gܶ�HD��Q0�]�� �����^��q��	�1F�YpH�ذ�F�-�i����ض-�![�yzb�۹C�Îi~)Iz��V׏�R7�"h+��њb�@�u�H7��m���Y�f<���q�q����Ӡ�b���",[���Q�C+s_'i[YLD���d��M�����0����_��v[A�/R�i�6�-�hըvTZ�A������u^i,>��l�mYn�<�4�Ck�#U<����<>��ŉ!���b�m��5ZUh �Ax����i��!.[�u��`4]�����es�Ж@K%�xU9�	�Cle\�����lq8끔H��.!([�Q7���F+�N���8�~�<P,�ֿ5��A�khiu�|����a]>"d�I�/�������LBl�H�Q�g���O�袅��ěki/�x|]Cݟb�-/�\����Q�Jr��B�E<O/���r#CY0jJ{��i�ѥd��-�� M�;���KFfC���������Gs�����rX��\�-a��w3|3�������Ѫ�ql���hsM��3ߘJ9��(k�,���dbG��B�l��3d�H~��d�O�~���ϟF�zl�\��(�3�zj���Bo?K�Г�)�l���7>q�l�V\ g���v$�ߞf���Cm|Z$��r�2�����C�/�,��[deC�4�&wh�IY������n����B�4璡���A��hUƥ(a,�3A��]��N��8N�*���ܸ$�`,��2G��r�VW��ݛ��y�?\j2ʝ0��H�������[��y��8\Ϗ^
!:���/q�Q-&O�h�M���i8<s=����nY�� ��h�٧�ٟhHf�Ppu6ȶ�ÅoM�,Z�P�� nN&�2��֥[n<�1��e��Ҫ�h���r.�y���i����'�3/[���Q�C��
37׉�h�ڇ��F��U���
�pm��ꕏ�8�ew�hP:jMW
Ck��mX�%�eҌiC�.I<�<�!ű�5ZqRG���y��u�s�ꖟ�bC͞b	q��;��x^vȭ��.O+�E{B�;�Zq`h�E���H��l��FI&S�N'S������m~�9��ѠD*q�bh �
  y!�@.�c��W�J�q�N6(���H��F�U��e(R�^�$��{ ,�Z���������8�y#δK�P&����-���Fl1]�n��<"H�@=i�L��2��d˒�s��Kbh�U8?R���j���z]ege!��b;�-?-��eɯ��Ǟ��]ɲiI�������gr9'���6{�lW�����eh�&?=Ҿ���+�Q%Dʔ�����Ъk-y�Њ�c�ُ�AdJޤű�v�/3�R�C��!~�q���{\Eo�K����}��O��2-W�
��f��pZO��eNﶕ~�G-IN�/�JᎧ����2~�8z:Q�.�!"K��fh�G��7X�iCn<���%7]��M��Z�)].#1ʑKǛ�(��/��&7T�ծ �V��{\���*cJ�ȑ�|D��l��NS��(n���Z��(J-��O�Hr�Qn�V�ήĚ�i�$V߆N?_d�e���Z~A��̧�����<f�#y���ĥ�k����_�}/���]&H-ɋ48�r��-��t'����W��]��Hɋ0����
�U_|��nU�)�N�I^�%�z�r��>0�8��:�gb��2ڐ��R��]�Ś��~���fʔ��I�H�$����3��*C{����e���ԑ���W�*���>���܏�B�s�%{b�Ҽ21�-����߰��!Fm�%y�E�d�|r�X���9��i�i�>QjKɋ4��Z���G�8\�⩨C�Y�p!-�/�c(k��m�å�e7{�������uۆ���1�-ˑ��bm/Џݰ��ĸ1n��N��_?�CC���;iIXER�apYw�2Eiw����du��b�O]4A�7xm0Fh?������eh��M���+c\E�033���@j�����tt�7ֶi��'�p$�VO�r��tU�s�}�,�nY~
�D�aSJ:�KwW�y��Gp��-ӣ��0�qA�ؙɱ7�k�*��/\�P��d���[k6��ɪ�ޭ�?�w��������Ċ�
53�S)�!C3B ������07�>D���ʓ7G�w��;��˅�}WZ�X#��T(�1F)��h�)���I�	�<*FLY��4$�QȒ#0#T���ƨ8�*�e7n���"KA��g��z.Ѝ�^!U9���
�2u�8��dy��T�.�����1��R�ʢ��j.%C3R��|� u�[?���P�/n_[�^NI�p4�Yu��\����$�,� �r��h���%	M[:.��i����]��N���h�6��S�۱�)X	o�r���p%S�ѬL����wn�<~bm)�ޒ$�}��3�a��D�����5�;$�B�Js���9�����ST��=���	HVS�yTqR�����?'�k����z_���|\-�t��ZOG���s����/�#E�sLxK�DY��4���9/���%M����yc��4��O�>�����ARvVNW(����c��o�Ǳ_����'�v��P2TDH�b���r"�a�&k��d�㲒�纀H{'�#��ȬZ��34�.Ћo�Ր*�K۷[�� ��yg�������܏�g�x:QRƻ�&ۥ�q4��X��%�������D��Yr��&�M���ҡN�3J\g��� �S�h�� �qch�.������5��e�JE����$�5����r�����:i.�/뒂��j�E�iE��M�����- m(T��PJφ�L52�a����\�iD/װ�45&*�JI��&Myy�^��{,�z�(����n����`\a)P�8���A͇.��,�闢?�
�KJ����ɚ������\[�C�� ���jW#C�������%��H���^��9��<� Fӯ�kw����[�Wl��&�-0�P����d������=���1m0'�nk�ƴ�1tu*~C3l��[���Hr.K�hʺ԰�ꗹCӝ���/�H����-XeyMM��rE24g_��L�̑Fc��*���vx�T60C3|�nr�(P#�Kn�qⴻ e�J3:G������&�����4K�Ќ��:c��D$��)�gޑ0Oe�je�04#�27d���t�V"��,kS��\Y&���J�e�����W�����$]���@
�5bhF��{�֗�p�TAsL%�K�0��SN�=�q?������s��#���$�9pOh�ܡ9e� �͝���݈������
�ir�f<�����p���d���,�Sh�Q�6�fx�="�����]�-YrѴ�,�4J ��t�a¨��וQ���Z����$Yd�45~����?/CO�%/@�x#�.�4��J��EK����������4����h���а-z%U�5;9�k�HS�f��c��|::qT�][[+���(�Q^9�a�ד8d��b4𝋛�*��i��DMwY�}���@~�Wƀ<Z�x��?R*��8C7s�̭$U�7�Ɗ�z$̒;�Tvr4=y��=��D\�M+μ�*y �f<���;�*�tn��&�[E9�������_N�ד�E��)��H��\�t�r4c�����u��n\�"�HK����V�.M�,�%�a8_�}[����}kPI�e�9�����H�o��<$y��XYC�jOQV���˯_�VRs�k#��T�X��36�7
��M�~����]�z��_G�
      �      x�����6����S�4�}�gm�F��#)�{&n�U�E����KO3�L`�3��)�Eb�Ld~�dyQ�u��qR�e]w��UEEgw�����o�~�{y8w����w�Ѫ>��g�4���`�/��Տ��?��r�h��Gݢ*�L��(K�����q����s�NI	F=���W;2���a����.��0��C���ڏ��Ǩ�,�Ҹ�|���:u����0�\�B5����z�����S�K;��C�,����~��u�dE\�Y���f��wߖ�8鶴�B��E�ݺ�o���y~��7��8��5����겊�"�������+����%k(](׻�vWꗇ~�5����М��G(�:+˪�>�o��8��e��v��v^;�CP�n�������y�W�.������OSWY�W�@�]�m�g����,J
�Z���/�c��?��o��M�$-���s�������xTs ��jj�:���_݌�z�ڧ��,�84��_��p{��*�2Ok��ߌ���w����)$$:���;2<'���b����n��;)�2Ir�q�{�ߛK����qj&F�AB��ǻ�jG早}�w��ms��1�����p�,��"�>��f��2M��`���0�7�>6r�<Nݰ����<�z�\���TeR��z��N���w�`�Ò�Xn� ��D��єu��UY�8I�Ӽ<4��k;-�-������O`]����\��������c�ze�dq޻mw�����=�����`~�cÖ0Se��}����,*�,���[3�F�m�_	��	6r�������]��K���ٿ}�IFUdއy�>�w~��ܝ4���G�����h��9,����"��«9��ۿ𧁖�{����꒷]��`gS�ح�/}�8/��Z�(I�I"�3}'����x�u[Zm��ǫ�.��_W��`������5N�Ͻ7~5�/��}��=#� ��LG�,Z�fp����"J��f�W�>�mh�5�;�a7�y�#L�L��F�_I���Ҟ�ӵ�2�YR$��z}��v����_�r������_�����2=��_�e+}#��C�u3���?�������`G��-��f�
����3>P��������;B�A�ܞ�K��ع�����d&I\����94��Gs�ϡ�t���L۪#��x�������gY�U�W�_u�5�}w���C�z�p���?8*�Z��W�~��i����u ���;�ՠI�����pџc+���j0c�v�{�W�,@/�:��c�ݥ�����~0�I	�xWwd̸|Kƹ���o)/``TB����y��^�׾% m 4��D=�-A��Y9}/ ���GU����	��o�n9궴�B�w��Z׍�?�e|��/		h�1�4�lN--۪-�6-�-���:k����
w��<�×}��}jws�?i$$-����/���	LO�*�.��/
iU%��~;�k�?�����<a�]�Cn;�ڱ'kp+�o�=cj�k�MQ
*��$$u����������KG��L���N�S�E��Y\z���lv��4w^��.�r�!��L+�V��%�]�<Z�QX�uva������rm�FЙ�t��h"W�#ï�U�}s4K����̯n~ޟ�+��.���`�x7��ș]����������+P<a+���o\׻/Ӡ�G�|���s� /��{?AV�I�s�l�w��&#6���9��C����/�2�j���������&W��������2�
��t�`t^�Ҳe�<u��q��i�9��yR�/gw�~�ؒ�%tk?���kF�=��ѣAy�1���!�a<w���4xT�҅b�˨WEW�����w�#�?��2��,����c��2����QM�6�j.���Wy����w-"���]�u�Nc?�:D�AbE[����[h��f8l�9lI�;�׻ߧ�0>u{���grx�R�b�8G}��`g�Lк��y��Jmi����4���7����A�.},������'�Ȩ��,�47rF?�ͬ �9/C���)���Eo�F�A�м׫�#�q�Z��X�.��ܵ�i@)���ۨ��jj������,��E��*Xq��XK�`!�__�~]���m����F?˭��<�hw/&x�n����<�F͟�����;�x$�?�y�#��^�Y3dp�<L�d����4�����Wx�L��cV@�@0���_�-A��'��I�)hq�Y�u�w8I	���Ȩ�2�}
��U���*�w�����.lI����F��F[�T�㹙Nޟ[&�����51_�P�[�),7X�x!�i#�:�݅�7U�����������0�__p�i��:�C��D�F�G�ߏ��-��Q'i\&�$��/����q[�i�y�#��G�oe׷�?����[�uV����?��3]3�AՖV[�vK��u�����N~��%��4��7�_��&Xˢ�t�`tO�Ñ�y���S�aU�{!uΧ��uU�Q���	��Nw������#oz��������ϴ�Gԫz��2JR��������|ƃ���!(](�ɍ�J�k�4�@��U�4�(���?T���ԍl�^i��-[������`X�U�?�z߂�<�}[�'�u�m�X;�4H���,��+�k
��eT�x>���v���[~��o5�.�=:\)c}�`�@ȧp�q��:�'�3��c���<  +���`a�Lޱ���Z7~���A��e��uS9
�	���Ϧ�U�3r�!�cwfG�+�����.��/cPTsXf�����k�p�������a�r�!�^�>�H�v� �-\x�?��1N%��|;v�ϰ�Ό���FM�ێ%C�yJ|�O�4��=	�.�y@�86g�҅�����)��B��gpJ��F��IZ�U�`�ފmi��n�4����`p�� �7u�2��,����4��x����nBH:Hhđ%��u�B���RT�QT0�k�g�_�J4jʵ)��)b�U���/=�Ψ��~y
�=��/�}a1l�O�`�@�@h ���N#����[�`{�k�!�UOPb���]?>a��B�A�О��R����piY�y��W>✽�x9�i���jݞh-������v�[@e
E7��w�"<R�.{���ȅ"��#�����y�]<൥؋��;�҅����B'\�+zh�_�n���;���KX���S{8�+�����Z�r���Fn���'c�蝁0��c��}����Ԯ��ɣ��s�&�C]�QU��W��p�(�c����9w����>>�b�'%�`${���F��7�]��ґ�/Tt�M`��9XG�^����?/�v�!p�#oz��i;�%M�}1��]ꞡ�>ϨH���S���\s�� �Qw�SǑ�����E3^�1
�{X��Q�I\�v�'m���!�u������ؖ�c��f�����,���`QXKo`��V�ڿ�҅�6X��lr�x�<;T��<`"}�ao;�Ra������9^ٺ��.ٲ����F��.�����.�H�q�ؐ%C��.�P��:�B���iB�A�����;2��Ӫs{"�b����	Fz�q����,��S�ș��U��}XG�$�1����ܽ�q���J���J��1�`��S��������x��L�W8�	H���|h�:<}6t�E�%��_���J�T-iZJ�<��j�5w��*�᪻����UwI@�k��0�ֆ�6���yd{�\%���>����YV9l�8�JW�.�0������C�BA�'[��^��x�7*XJ�����]��:uH�#��.
�.�J�d�o��@e<F����\��g��G�H:H0�=��d��VI�VU��C/`뼚�Ã���>f���z9q��#��m����!�<5��D�5�"u@��t ,7X0�љ�F�,��m�{�Ҭ+�J����H��j,7X�G9�1��/����@�(�ҴHr�9��    S&�O��u`(](>��ו�|�ʭ��l�'�U��1���{�ss�����y�#L�lY=t�'�B���޻t��a႗�W���?��0��	�mJ
�g�R�zmwM���WQU��O`9��L`��}Dӏ���Рiy��:���;F⸈R����#X�m{��t�O�r����IIr�̋X73ς�z�z]�� ����;�k�{~L��q�z��WX�=�8���*Q?dâr;�?�̰�Y���j��h.Y�ͧzj�K��9`"�Vy�xݷ�Q|���	dK(߹��;"b*�-������+�su[Zm��O%���û9�u�bZDyK�������~\Z��
��fs����>�o��eY��~'�Ƕ� j��P����w��dI�o���ލ�Jq��A��>�+/�������4�Z��'=}��c��#�_�l��a�/Ui
�
Vy���~����n\����g[����d�gmI{��b�ҿ��`?���~������F��0��9��P�y�i��#�ݔkS�����U��}{Ygp�8����U����r����/�����ϱ!����9�|��5,���;�@�@ؓ�hKpj�2a
<�wK�8�(�\�<�u�j�@Wmi��n���Z׍�yU����u�j�jl�gF�AB#�k�h���`�z��<N�<)S���
4ضۯ�w�m�Y�zR����������gQVI����i8H����aKX1\��G����S���幛`+� ~lʵ)t�C֫zE�dsz�A^GU��%\'�q�t�@ڀr����V	�t"�}�E\�s[�u��Ǽ�q͈�����ZzI{��MX��Lj���NO:���;w��y�#��_ɍ쭕�}$к#x�~��-z!�������H:HhtO
�#Ê��4�:����N㢪~��-��ZN+�#oz,O֙��nd�ߺ�����z E�*c�̳7�P�;��	��sdqρ;�$��`31�y�{*�#�^�/���
~�jI���.s�,�u�}:7���t�w����PC�Ba '�Rk��|���AE.y_@�Vi��w?����㄀��fG�%�'�Ώ�~�����l�4��o(jQeK�M#� �g�92zK#��VYi�����o�	6ՖV[P�H��u�$L*����,M�-��m��y5�bO�#��IʁElVl�_�ё�bZ?�0/���O�4�.{R�\)�d��o>�	(����}l��	s���Q�2 �.+��|�jK��yn�?�"+r�X�@�o|�n�$F���ܝ��=�)�{eUH�{s��3!��LH:H��"�Ȭ����C2�ZPנ�eI a�c��<�i����t�`��+Ez�3)Au��ʵ����ψ�5�<S[Zm��kb]׫�r��fߚWu�G9�;�k��}����V���,7?9sё�M���=E�IR�޿6��3��6�<�3��m	��b�u�� Y8���` |�ݔkS��i&%�\U�۳�Lu�&��t?6���v=����}�������x�����	a�/1+�85�}�mi�9���1��uNQ�s�=��:�P	�j�M���x��t[Zm���#��u2��_:}����I�`M&~��7P��'T�'���x��(�Ǒa��P�&[�Ge`���l4%߷������a]):�����\8�|C>)0X�
����s�>ꏗ��2�q`�#Ñ�����bl@K�N�D��j�U�kק�|ju[Zm��3������_�R���2��c�����TS�M��{f�0W��s�4��4���������Ъ��GM��vphi�3;�#��`u��^B�~�p�O���Y4�.4
�Xr�h0�b�߀AG�:�}��U�C�����jj��ݺn�G�/ÞJ�!vu�ᚖ�����0���C�~�p���m��3�E��+���4|'K1Y�d������"c&&�S��v�1ӆ��4��|#�C5Pc���<4G�	����`��S��0w��)O�C^�#����v���`��q9rd��o+�A[�a�7��G���U��N4v3z�{���7I�/F�_f�c:)�D�A��CoN�W��]��~�I�T!���	vCL\����;�7=��pr��x�(Y/�Ãw��H5��Z0��ڶ��O꒷]��b�Э�j�?�� �:��
yOߌ��Sc�q������@#�CЍ4����>�I�x�IZ������w��
H�4��&e�?6x��E��u��!�ez<�+q�M�6�jr��zu��P�P��)؄*��@x�7�K/��f�{�M��f�I~7��K�H�K����Tf�"�T-��	}8"κnV^$��n�e���D͂	��qj	H��$�$��b\E��`��Q ���姊��kv�f��7=b�ٓ��F֜EqʧgI)�(�+XW����n�"��r�i(](�4F])�V� �(�b�@9R����:���A?Q�TP�P0�Ϝ'aK��&5	��hK2X'�TeH��=e*:hM�G��,��IJ����ͳ(�-��S�`�+�͒Րr�J���*|�:�X��\��:�]��c����҅�asϔ���D
��u�^"��\���i m@�ssO�K�������V�=��X�;Y�� �XE m � W�-�F]Mh��^>�*)�<�oY_�̈́(������đѳ�	���Ua�o�BGߞ;$��s���e�G���gװy���uB3����3%yR�{Z~������t�u�P<�+eeD;�O���<��v�U���`���@�;�[#atB7��v��3�H{�V�oOۍ��͞��ƒ�	зs�D�n��Q`]��K$�'�TM�6�n�+�/]U���N8��I	�[8d�đ)Ǻ��.�ț��0+ލ��1�{�q��2p����wx�4ԖV[���>�u]����f�.U~�v���~Q��:5N!� �6�Ҳ�Ȭ�ȍ^�{I�����Z���ܽ���w��t�0Ф�9R�Ho��ۗ�$�X�S���~n�~�'Ւ�%T�yb_]�A��x�}��0� ���f�5��ؾK}��'־fǡ�7��*Xq�*F�:D�8�у�k71�I!� A�H��#ck{����4�g(���F0ɌSs�E	���a˸�D�D�>I��� U?@�;ux(ʅ�6��Z���	�>�G����F�-��_�=7�
@&S�Ö�}W���5#ʷ�"�k��b��ש[0����`е���J0!�?����*�+�J]��U��6���yb%�\5���e^�Z-#�6M���ܻ��z�2$(]ȑ�3:R�U�B簶�_BgU��~k�S�T�_v���y>�d=쒷]����Ŝl����3w#(��'Cz�4��?%��O`N�?Q4�-�Of��;��@͍cX����#l������tB��/�����?g�P��(��8Ϣ4�B��T�`�o��0.��#oz�ڳ3�Y�[�i���!�$Q�abӻn�� �� ���4�@3����'5X�	h���桻6ǻϝ"'�H:H����2t��|�C1؈e�ϻ�,�L��)�&�:��4���R�-�W_dq�e ���e&2}hI�""�����q��EQ�Xe�Q�ԆV���6�a�����1�0W�HƧ��Q��?��@��+���Wi����0��<�<?G�&����ݣȣ8d�~ޟZ�x�6�QJP�P�Tu��Sl��}�!�Iȹ}�\�����8�Cn;a'fl%هBa��AZ¿Ӥ���ԩC���ݺn���9s]I��O�年�j��`M��dĪ%MK�O�OM_��{�cL�*�������`�)J�JG�_W�UM��vx1��M}��������9��yE���i	�b�bs͚>�&��񃥴��	=��Ө�L�����GX='�7����1Ya�T]
M|�����9�4��NW�~[2DD�    P��	��y8���ΰz��0�W�������|{V�U`��n����:b�:^�3�S��������-����_#����٣��4�,�w�! �)diYs����e¦Y���3o&uTH:�>�t���"��Ec�$Fq(A�������*آ��`���+���M��p���Hr��o� 5�P�Д<�ya�[�	%gB�)K�ix�X�ˡ%�;C�B�w'�FXRjv�'B�!��L)�@��n�,3����ն�hK������&9����?��Js�]�	�KB�AB#Ήqd���b�wϑ��d�|j~6�H�2=A�B�������/�_v��WER`�f�����Z���_sD[�Ֆ��{�B�I��I����2�ٔ�r�a[3W&�HҞ��uyFd�VI,`��w�);�#(](�������gB�1�`�V�����}޷�:iQH:H0j���������; ��*�p�*u�0A�B��zx2!����縔��a �"�3T��c��(;�9t3��vXg������	9�=9)cԻn�iU���U/{q��ٷ����7=��iGV�7�'��u}�$E�4X��nz�t�*��Xn0�l�uq#gI^pM/�xIk�t�$���^�i�Cn;�Đ�����	���h����,���?^�;�����0�kf
��J�
� ��wA�2<Ԫ'��4����eߞI	B�d82FU�<�O�U�'8��7����4�Q@�@8�\�W������'��,�RO��\�t�D���锾N{5��������};ys"�_��9��\��������:2����`.��e���p�w��A[c�~�#֞�^��vs����˃:�{��?=��_U
���\��$�W0K�ț��̤;�Ț�OW|3)��:���~������a��Xn�ʄ����93������[��j��B$�Yt�t����@�B���-K[ʊ�C���RΎ��C$�߮��^`�vj�]s9�}��'־#�O�ʛwd�U�>]Qc�� �귥}Rqg��MC�Bs0�U�])��j��h�*�;	Q�~smD^��g�J
��ז2o��0@�3�Ľ2��݄UpA=<h$$1�#clu4�<e��C\�`�Nݲ�����s���ԑ#��gk�£�?U��O�V�ܠ����8�),����oe���u����Y���?2�-��%�V7���/P%	��L��G�ѣn�H�oK]��@<3��ʤ�C����l�>uˢ� H���X�D ���JP�@��+*��5��ᩑ2�$5���Ȭ͝(�`��:��$p�C����=�[m�����g�>�'SD����i��� ��vă����K&5өK�v	��Y�o������K���iZf�U�c�	j���҅�V��s^�-E�T�|�E~��P�ݡU�����r�a��fC_�JZu%�U�ӳZ�WL����}�*MXn���>�s#�a�^}��Di��I8�}9�wh��u�����L�~#k�9�H "��CI�#j8�i�d얀���`�Hlޏ���{3UZeYXX~�?������{9�țaz�.��,;P�XZ��:��D�9��G����"X�.$����J���y�wf9S4��8ސ��c�Cn;L��#���t��a���Q������|k�A������+�Y2�0�� ���$#�.�@�_,,p����pXt[Zm���b]g�����w��D�!���?�'�5��8�ԑ1�D�~}�eu��ش�-���w���A�ZRP�P\h5s�V_�)>�}���q �؜Qq�Hs���0�%[���JOvy�HR�}�@.�濗v�=`(]H� �)�gK�k��q�{;i� �D ���E����C�ț�E¾�Yڜ7��|o)ͪ:���J���}���.6;���q�>홀��Q�`����^�@�p��t�а!&Wj4Њ��!@���:���8:�C����3��r��ø*�G�l�,k*``cZ ~����a�|��^7A�������$�J�����H�JA_
Hp8X�r-	w¬�>[2ɰ�K"bE�:z����F�A�g�82V����5�0��X�F?`����2�I	F����-�E��|Ir�f*�'��De=v���ltyNf�ȅ�p��'�ݶH�m0�`�1����`�Z��y#gq>2���QJ���@~��6�|�~�.\��,�d�RF�߉3�}㤈������>��eoz�M�����Y浱}��3�J�T�3�?P�D��;I	B\'Ց���ג�yM�E�q|Bx�nTsD�A�����6��*��#�5�B
ī�n&d�$O�F�A�%hEud�g��{7Y���$��Ļ�S�Smi��;v�������l�'5��ߪ
���	�I�>�%���?���r}iRbQ޷�:N�c|�������-	�K�?τV'��P�f��r˧�0�\u,�� A�rr���^z����-�^ȑ�ꊿ�A�D7ӽjʵ)tsM3]�]��ߜT)������:�}��
H�O�Ub����[̲@����k����}sb,7X0�<p�/G�Kw���:P���DZ5Ze)���t�61��#������G�;��1 X�>�.pU�c���r��v��ҙ�V�������}�s���\�5��^�ܗ��Q�6_ǷW!iK^���ZL���m�gLiA�0�*�/�B��C��Ȳ$O���������	J
�'*\�JYA|�g�b�Q�6�*��uK�(�w"��%��vߎ����9�Y�T�s�i����7���.�5mf�Z�P�B��X!���������꣝��s���e#gQ�o����þ
zo��D3�)�&����>��KX):=�&o�k��Ǎ�se����͸br,��b�雺���M3,�� ��L��.���4��A��)}�b�d�Kߟؒ {�4�u�HC��O*�s >F�A������d[Ƭ@�X�w����u,m�`خ���@ڀb5�Ѫ������z�D52p�~?��f����Z���X�1.fSp%Is}�����b,7Wq�����2GW�.��*vE�R��������#,�(��{�K�+���҅���_D��H���B-RP���`������U�y�c�'6w7�LL%�</%���*��i�t3��RS�M��~G�\u�]|o �-�B���E�mѻ�B�A����td�����F��ZRTq���$�V�����@�B���r�X[�8;�
�}$���b/�"�Grr�o�`��ڑ���ְ�N�,��Q��li�,j(]h(���ݕ�|t&eз�fi	�]HZ+5�5�Va�v��{�����eVϩ�O���JV�z�x��aF",�\����`S������>���L��E�~[�
���N�q���A�'1:2f{��M�$N�8�-6��k���G:Mf(]H'�-��R7����\�Eq��$��O�ɨ��ڂڰ��0���q��{�ֱ��$��]Ё<h����-����������T�+��o	��p��n����@ڀJ��7��Z%H�z��*Ek;�q�߻8��Iӵ�P�'7�;�S�g���.`���?��r���'$Do`��h˒1�j���`�Ԙ㷚`���v���AiA��L���0��n5���G^F!7�;���t�í�t�X��'�R�sk	���2�a3�B��=���}�L���j,7X��?9�V�cO!Ǿ�YfYYa�&����ij��/�^˿,417r+�7�y�JQ�ڝ�0���`� �l�p�F�������e�����_�,��u�V��a:v����f;��|CLl6����[I��2�Y���Ȭ�m(� Œ 9F��x"��@��ĭi�z��\��(2����_�v���;�{�M��M�������w�꼬`u�\@��=� ���� g���\�}|�Z���Vx��'H��+�Mx�r�    !��OE���sy0i��X�-��y�*Nگ�a�.�O���v-W�t%W�]��7Xj��VU�������m�Lt��{�Fw�lViЈ�<>���3��WE1a\��/T�B!� ���qd���7o�(Ia�f��G4îw_/���Ϫ���7=��FS�ĕ]ٚ�娅��C0{��swj�}��E1*���`��c�6r�*�b���ɻ�f�hH��}�_q#o�~/�8�����#��]�?�~`�OUVe�`U�3|�y�F�A�Gu:2ʿ�Ks�����X0J�@QN�z3�8P8�ʅ� {r]�M	M*�x��fq���/����Q�l�����ʙO���P�5�� o>�Y͑�_�-J
�$ԕZmz3,}%��#:����<�Y(�ț�,��J��ʒf��ʾ��$�Ij�ȼ+��6�{�V	��b��o�$9�祁���?�b�.�c���RF��yWԤ�3��������k��K���ڑq�|/#��ɕ��X`��\&��js����X�|�S`֧�d�Ꚃ9��ҋ���u��vXo` o�Vr�~����7� ��$T�逡��0�Pmi��Y˰�kut���i	S̧@�]GG%�A�B.��D���"G�Z[��=2k��e��Øo���M�6�j��R���"����I�ˢ
U������T[Zm���c]7`*�^?��$��oU�^U�������̑�ﯲ.�/��Ө�l�o{��k�u�m�xw�z]I�� ����Ss�^.2X�j��,ݪ�w�)�&����^�cl�#�ӸȢ8@f���a�b�P��ĸY�v��*�÷=�u�`֡��ڻ�V����G��ĺϴ����� ����o-
0������L�� ߾\(���FXT����h��ӈ�f�G����ؚ\W��N�oq(��8�b���S����y�������F�T�1q��[`zH�2ߞ5�nA0�g��a:N��J�����8��ö@cЦö��9���J�ܢ����m������V�K����J�p\���M� ��Si��y9[%�����}�m�,�O�u��3�];��@P�P0�L�fKы����ޱ@�'�:PT��\�N#� ���'��#�Ԩ���<��������>�Էh*�G��X4���Ț�w\��c�T��e���U6��b�WH:�8 9)Ñ��D��8Y�Һ��S���U[ZmJ7<��o�n>F��H�����?���o��h	Hh���/��\%t�C�؏~��!V����gӁ)�t\J�..(�J�uBx��[uT�	΋@��2_a�#��J,7X��/�9^�U�+�w�SX���W��_U_WM�6uMv6�֫k��6��|,Y^ǁ�����|���-��i$$5��Ȭ~4�|���+J�<�8y1��ڽ:	Qr�!LGCDv[I�l>�k�GqgE�AyE���a�2���2~�UƔg�5�7�HQg�L�O�E��X��v�P�P�@��+�j���C<�'�J0����tZ�Z����-�%/��;P��ZV�xRU���]5�"� ��Nϲe�5�*���2�-jh���\୮YbJ���G��s���޸=�V�Zxŷc3�z6Læ;��"j[�B�J��q&���<��+C����iދ��z�J�-��,�T������,S��o���N��BnLia�4�l��G���%�).�%xXU ��� ����87����t�0�f��J�ș��i�`�
�b�{�tL/�_0�.=X�ǵS�:�չR����t�J��Ρ��#�$�j|k�@u8޽��`�P�P<��hK��c��=	�nH��=^�*�}�I;�)y�:��?Kj�Em�9F}	h�.�*��K��K	��;
��ȭ,K��;X ICD�o�I�|[�CJ
�'Jht��P�N;�͠��������tl���rm
��s�������MX��g����Q@��m�a�B}򤀴�I�Y�Y%���c]��;S�š`�/��'i�JÕ�l	�ڶ��z��D�xW���s(�҅�(�/��{�)�N���UX,��-~@b�X^J
�'Zt�x�v��<�IJ�@o�'E]�7�O��hm�F�)|�uc�=ǒ�癪pI�
��ݟm
>6���9�:�^�1`�,z�}��f����W]��a�\�Ө

s���k�~���H�5���c�+�Z���5J��qY��:��S��L����!���{�S�%�~o��#U[Zm�6l�b���>�D9�e�ȣ�
��R�F��?H�R=�GX=�Mk˚�ʋ�u,��U��k$��|���Й�xQ1�˱}���?�+�e�~��c��8�1ם�t� �y��qV�>��:��+t}�b�P* m�g�R�l	��9z�gR�� ,����v-�����f�7=�{�6�FV�w��SVq�%e��Q���a�`��^n;��l*�U�3�̈́�}$����0���㤚rm
�l�p }u������ŽJ�4���:���}�;�af$$4z"z5G�׋�g֋��R̺��Ѿ�p\�ێ5 ����/]I�!׆2��JQ�ā��];������\�r������*�����}�:�+�G%/����w��w���#,7X�]��ԑ[U�gN�A��Q����`D��ю����Bm(����£�԰�u(����'��B�ǺCn;����V��Da���yc�20���yM�����NjK���>��zFhØ̃,s�{���i��k(]h���SՒrUs|晸08�4�� 5��n-GB�B��ӑ?ڕ2'"����F�o�Wc*q�����"�.�����gd�¾�_3�/B��D���țSC�d{2,�s���oρ����$��D~��WEJ�njWݖV[�v�����Aﭑ��� �҅|H��4���>��j�Fbu�9�w�Ċ8(��tA���;�#oz��a^�Y������`F�C�<�_�p�aB$�0Q�%c\V!�[I��C���nДk��4ִ֫f�sCIV�Yr����g0E�� �:�CX�3����ܬ[��P�%!W�TUOB�A4A��ϑ��J��B�����9Ba��s�����9㴮���Qz��4)�� ���ǈL��m�a֬j��R>W��H��P��K��w`s5R�j$$q�#ûE��y����N���r�9v��*emi��n�.jn��}U0�o�e��|�s�N�M�8E���8J�7;�*C���t��*<-X}��:o��xlz�N�%�����~�Q�!����\�?���҅�!;n]�������|}\�ʬ
П��ٟ��2)P��vXl
��n%7��+g�o[ȣFH���񡫵;ԖV[��y0�|�F�E��[�T�"d�!�����:������kǉ���&�٩m�[�<���,�l���5�G�Y���T�����NaUU�VL���B�A�Pwa�^K�f˳S�@�b�t��������7X06G�A��3k��Q�A��
��~�wx5> k��B�y��U��T�x�0`�()���ދ>���钷]��ȉ�`n�M�;F�WE0N�@�.ʽo@3�O��)s����C�<#+�e���ϥ'� lI���@=1$�kn��<kE�ưuƁl܏:#�U��}k��`Ax>�B���������2���#�]V�o0����y��cK�<�v9�����*E��(�ܸ��z�6��teM��b��9��!��?I��{R�>ͮ��9�C��\)}"�L�f�wI�R��R�?����e��~C$$��(̖a��9�
�Wy������Y������u��$� �q�"��������n\ՖV[P�a����ZAsy�Ο��Y'N$�|��6��-�#i�sa����P����Uq(��j0�H��@ڀ��OhIX��f��/�S�t�@2mQ#�,�M�����32����_���`��-\�    �����v\Q�XU�3��;�7=.��D��FV�զݩ"7���s#��*���G���7���a&(](�Kߕ"��0.y��,`oJ� ������p�uܵ��҅B�k8R+���}�2B��:	��}����%����5q��(7rdu?�.c�c���"��:�ڪ$K]�ˮ7{�F��4+���u`'qT�*�_q�W�u�m���w%��8�fs�2�>���W�,�
�sSP���׫kH�S��;W�*��:�$�M�(���I�N��V'.����d5�]�L�:�0�ѯ�SaP-�b7�j.W^�d����z_Q�fYV�䷱9��
��j���D������7i,��g��us�H�O��	����Y���]e��n��Τ��
�e"=����I�PXn����D�9v�?��&�R��/�����p�C5��t��9^�ѓ%eUIՓ��i�I0;�o芞��㈥'J
GJ9t��.�d)y>M�e��0Pl��O<�}n��D^��a:�#�G��k�s�}<{�� '���
���!�!T�y���W��Y���i��C�����o��oJ
�ǟ�OaI�s7���Y��e��Շ��F��S6�����.\�:��V��oSϊ�i/��d8�6`nŞi!,�5�he���i��*��a�c)@�CXn�`��a�ӑ[Ϲ0�[k2��8�n�����Z�I�m�Mk�)�F�pS�T�0��2	�k|B^���}�?��

J
�L��J�1`�7�D�M$��ÿu����2]T[Zm��̂e]7��k�{l!�Z�!��������J��3�|�Rv��w%.�N�
�}#/g�x��w��m�r����it�,p���E�1���G#���*^%���ț�����Fve�%g���en�v��3,�Cn;Lƞ��[�5����z?rV�V�O#�h(�TJ�&ur�`x��	���t�1>yg�H�e M~���n_�ن�����AY%8Kj�HO���H�j.=��#�M�6�n�~�^%��o����08<d*��S{��MC�B����-e��},A�/1�ѿp���o�r\*,7���\N�v�V��=�7;Е��ART,�+�+$Kl�,�3��;r&`��<��B&�2D��R�|������K�uݼ�	���­� Z3�q�`:�r�O�n0�N��y=n�ȍ�{u��� G�4�}�d�����|4��,).?�\ͽ����J� 9�kLSVg��j6q��v�XY�\Ir<5��}�)�~��0�>��c�;�o�&�^wJ_�&�~�(fߟ0���L��^�E;0��@.�8�0�{:P[Zm�ڧg�����A�~�f(��*	�k8>b4�*(nu�m��9G̕$[�(�>�\@`��$\�� �
PՖV[���ʎsݜ����*��,M��A��tP���4�,V̥C7r� ݼov��"��0&�<pJ����6 m�r�L�kK�#X���E��`%�Ҩ�Z}��笫|Q[Zm=
ƙ���u�V�Szi��Q
L�ӟC\�-�6���dX�-�{���-㰓�`�����Z,��UJ%c����纭����Y+���B�$�UR���o�`�vSr�a�-#o����@�j�����A����zW�p����W( m@��g��m	5.`p�c3>L���K������T��-�����g��U�L��O�E;�似���j�+$d�3W�#C��a��
5������NiSh	bS�M��	j��&:�.�j�UĒ<%����ek�-�6�a�u�9w�����S�H���3п>6��^E� �,���ٕ[}$~�*S4֥��
�p�S���L��'fȳe̋x�U�BN�2Xk��e9v\�Ei��2S��-a����@XC���O�w:���6���u�V	+������Y���F�:R_��N�ů���%o�lby�ܸ�f?������<A*� _��aD���G$��҅�@f�p�,�6f��M���`y��	3@����S��N�3F�Y�3G�(˪�
Ĥ�mTj䫶���I	Bˑ3�-�Y�����a����<�Uި?��fi`�����J��,QW�K���y�UH��W����k{S�0k(](���H��_&л���) A��1��/S��%��S�����Q�ry�=Sl�d������^SUn�w�����r�.�~�2�SU䡩�j#�J<	�#C&�s��*�O-�զ^S���g,7����E'@9�NޠCZo^EU�}�`ɩ�m���P�j,7ت=N��F���y��ML���8��L�����ۀ�L`K���g
Pbm:�.Q�K 6���ayn4���+�*ÑԦ���烆��������VU��m�Uwa��dkZun΅|��R�����]0��~E�J@�@hp�R����Q�.��6`v�y����b�!42����b�W9��wxT)�ވp�ץ�0��0tY%	F':"qd���9���a��@���p����Z::0q�#���h8�\Y�y������Ja�`L���s~k�@mi��jw\	{���>N�O3����g���L�UΜ��r۱����#i1u�C�3rk,l����<��i&	Hh�������7��b9��P�3����*���y���u��x�%o����䇷��^]�ާ�2�w�@�/��u�w��t87��!��:8�r+i�.����:���~����X����wH:Ir�!L�t���%�2����1�H��V�웻��%��҅��LG���u"�K!�| xX;$D��µ����X�-��Pm�>m]��Y�aE��x��5�'F�AB�y��Ζm�vU;�h�cXۣ(�\��W߽������j��+��J��^L�3T���SX��:�g��^��Z�Dc��k����I8r<)����l��"��L������r�@S�MA���Y~|�OjB�0�kF�y�{�R�@aS�Mb�b2��*q�S4�o�%q����A~�I�y}���A��*,7X0>�~��~���{�I
�{�D���̫3��	r�%o��4�#�e��4%E�o@&��I��%.๮�i�H:H׻�s��-�f���pNVl�$��Au�k����bl	�.���L�:+>
֔RK< &ĵ��o�;�C��q61Ύ���ݣ!ߘ�]���?����"�|3��\�B7ҡ�z�H,M)��͊@�ڻN�cHN��#2bP���kӸ�Jە�ؕ�>�A�*�(Ъ��s�r�i#M��v�X&��}�dZ�Ëe�u���8,&oF<9?��t!�Hs��+�J�."�{!Y�5b��:��xnwǣ
IA m �y�$���X���S�)�B� o��e���Xn��ŋ�FN����b�9�2�`t����x��IB�AB#��92f�ZO�+:�y
Jx(輇�ሬ٠�0��Oz����@K�G�tp��[>0/:e+��ݪ��"M�nK�-T��s&���=a���2����^v�}�zj5�6��Ö�x��,�$-�+HX��E�I�����Nf�0��g~I�U_���ŔHTH:ȔGl.�k��;�v���Ѕ���++؀��7[�@����T�4��ԩB��	��+A�B���\).	�컾[��� e�V�ՈlJ�4��i3}#Ǻ[�������X�������n��oՒ�%T�ԕ�kk�;Gc����G ߖf��QJ��H:�2-8�ܑqI*�XPKBz�=,H�?x3N{Xv_���L@�@h0�yo\%6��Tҽw��[)O���od}D/��d$�#9�ґq�'=���	�ҁ<��Fn�ȒCP�P�9�ߑZ_�x~�-��EУ6 �Om����t�А��])��1�p몂��.낉��zѫ��n�v�>�r%���&P��c,�XC^�wȄ��Xa��j�fnW�:��6Ԯ�-��$�C�_�GD6��ds��-�L�|���,�Bѫ/��Y�[I��������;+te�2�mQu�g��    T�aп�.�@@�@h0��ٿJX�a���U�*�:T��
���tڧf�7=�{��˴odyh�t�ݎ�
�X3�X��zKvi m@żv��4�bo�~xX�q�sc�� �=�	z>q�B[�:	��<�*M�4pr�ٙ���QJE�	o���3b��n7�*�x(�Gl߂Fp������jj�~pmes�l��{	q���Q@�Ф�]C�����몹RL�a����J\�U\�(�2�J� ��fpX_I�_��=50Z/4O<�	<, U������a�<i(]h*=1ń+EV��h���
H�a���m����������3dX��O_���#�Z�`�[Pؐ4`�I	B��KIZ2&�\{%|�5)�9�|��U�Х%l��6�*�-�~N����ϝ���-E4�a�����$ <v�{�'6��<k{�Y��S] �>�a�\��#oz���;΍�����<^&o�)<���n����	�MW�]�7=;�̙�[Y����6W�2D%�Ž�}3tS�M������W7&̥Sʛ�[EX������0C�X�����I	�Z:+tdVe=��US�!R؆�2�]�r��h��vݠ�t�0��%\)^�C�>x���9�8�>j0�h����FGrG;2k��s�9�X�1��Cj9κ#,7�d��Z�̒[	ݞ�x����H^*��9ۦG����nfX��54��]�>���ZC���/��*��T�#�.j$$4�1g�-ã�-9㛱9r �^�_L����g�5�-�6��t�l]g{n�󾁪Jb� ���k�(隢�-�6�e>�:���]��#C,�7�q�4�������]��J���[i��S
ߺ�Xd���>׻w�U�� �6�G�_%��#��R�i��k~'��.]�^�{r�m䔵�h�AY����{��;M���\J
���ȑ�NQ�Y~����5�;�}ǹ�/�3r����������N�Ε%_�?e��SeI������|_�s�p}GA�B���)�f(%ҳ��EY�q��{��uH i� ��%Lu�v���t��:�Ê̿�}�X�}��T�6�E*�OiK�}�M�?&�=*]!�8��:
HpU�#E\�fK�'~@��(��~�N��Π+ϳ�|�
�P��N�\)��^DEe�2�>7�jރ��S�m�.;H�LlQZ2<
�#�7	�n�W��7�|Ēp��%u�m�Z��/s��J�5%�˃��$I`|���O�"�[�?t��vX�!�n%��M���uV�I����kJ�7�"�;�,�92֕�B/U�A�����(TZ�١��qJo]O*�+E��Z�*�"L�-lF����2�T[Zm��k(�Ӻn\�S�<��{1��H�()�r:`=�w�����I	B�v:2k��t=F�x�|�J�<��Ъ��W�{X؛��m�0]T+��
&<z^BG��`����O_��kC�eՖV���&Y^��d��ٟoAC�~�ơhS��q��:�B�A��8:2��A<<A�u�/E�[s��������`a0��o�6��\��7[⼀=���~DE
�l��_��	Lf�#oz��s�0�F�b�{�&#��#3o��U��Z(���`�B�㠍�!F33ɣ��	�u�*ϼ<�4�!ۨ<��~�kK��B�)�WJ�mŕ�~9�XlHn�xػ��;�b|<&z�;K�ZlR���k����W�pI�*��krdH�r�|� ��GMC�'����U�^�JX�Z�;=��0�i[u�t�� �0X������`����'k
J
��ӕ"������.I��*�t綽���=n�
I	Ft��Ȭ���p��Ɯ�@8٧��|�.����`�����ц�Y�����c�^��|��x��"d��C��B/QIN[�\|�%�-�Ɔ*�hg����H:Hhĕ�>f��6�`�B������!o!S��l(D�Z.6��i�jm�G�l9�T��.T~�rmR�W��;�oxgȪ���cۧLұ}|�mi��n��u�f�O���	��~m{���+�-��&ca��1:n��o��w�(�ac[����Cn;�㉡��JZ��1�O�E5��@����<u*3EEj$��;
qd(f
Tլ�<+������ȟ]�<�PXn�X��JW�������E��� �n���H!;��§���c�2E�+�A~k���q�+B�b����������<^3C�BA�9�])Vv� �<B�)���<���7PW�Y�r�!L��j|Z�����F!�s����c��ӿ6Wjʵ)��7�(�W͖um1�����C�E��`1tw��o`�a5	���J9r�^��y
�Y`�W��7k�U�鶴���n��Ǚ溉un���;y����MÀ�{+Au�m�J�1sٶ�$W\i���I�|T{�\X�Nc��b�K�����9�g�˳��Ty����q����ˬO't��v�q9�ɕ\��]<�g�VYV��H���%��5����`\�S��FN/�\��e+,�����ݗG؊V�!�W��fG*�#�9dV��L���:G⌀#�mߨr������+,7X�=0�#�n~���n�q��Q ���k3$$z�J���j����(un�G������~��A�*�H����7R&i�g��.�9ym�XI�	>J
���t�ԒbY���l������k�kOXx��
aI	B͕Cf-l���I��^��wy�s3�}�<�&1k$$5W�d��ӎ��>E�U�����Dm�j.���!�Bw���j+������'�q8�#G�B�F��@�B�!{�])��%D�\�m�b���	�����_[$�-�6Y*���l�o��ud���I�W8�A����T[Zm�;�Ĵ��~��������Rɑ�׿��FVs������-����d[��z
�=W����q���M�S�
hK�-��ָu�x��54��QU�Ȼq�V����6r)Kbe���Y�$����չ�	�|���v�r���k/�[�U�X��<�^��r�Yˁج�������j���H��u�G���8I�:����ߚS�`B��F�A�Q{a�1Kf�T7�˞�J6̻���J�~1�GErP�՛a��gv�ld���Ҏ�Q��r���Ѽ�����q�>�|G��H,�U<jS�!��PN�k�	�ۧF�T*(](2k�+���N���Pf�.�����OM�`��[f��9��l�^^�*A�!�Q���͹i���t��% m 4XZC�i$64�qπٗY`L$��o��s��]��S�b#��V�(�r�i)��pr��*�Cg>Zm��+�����ݮ��)Y7O���[���k��t�`4�<f-v�$���3��$�� w�kxg�Х/	IQỸ9Ķd��+�o|`�h�F���W���4�����y�4YK�fc��7|�*p��AGq�B��t� ��k���?ƩǊiM f��8+0_�+�-'#w��.��x���[i��<��1ֶ�#�q V���?���b5��)�9/�>�W�Ŭ}�k6F�E�3�O��_c�O���P�P0d"KW�M�^��xU������V�7�N_H|lnK��Q����u��2�+Q���곮�e�I��x�0��9�#�N���c�蟘`��ybV�<���>���W�#oz��9�޻�5.�5ܷחyT*rS�b���t��Y�#ozV�օ��Y��|�ٳJT����qMa6N�B�i&7��6vX���̲
��ǫ�J��KU��f�o[�p&�T��=�\�o�3�S�CsI	BW�e��y(|�Z�xx� ȇ�:�''����Ӊs|l�d|��1<���-+�Ja��b(Z� t���k��38�^��G�%�(�_ Ah3���L��vpB�ÁW2W�l��Q����`&��y>��7�}laQ�4�6�i��%��{��u^Ui^���3"!B3�fՔkS�&/��U�di?�o�A���<@��f3�c�Vw���8Α�b�Po    �r��Q@��_�T9�i�	J
�=��dKQhI�wu�"¨��
+Ks�~lq�) m <ҺdKX�K�B$o���Xh3�K���pU@��xy|l�y�#��DLA7�f�@�?���ީ�6�U"xb����vG�U�}���q��&�]Z�5t�ɻ��1�yY��̫7T��e�:����k�I���!�a�§
82��,P�/���P�P�;3a�-�lik����(�-�BL�c��UG�XmAmV5��k�p�?���(K�"P��������M�zz}l7C�_k����t�&� ��pr�>������e$$4:Q��#c�N�b����%3�G�,��\���&v��^�u��ʦ�GO<ǍB��/�y�JL�����P,s#��kx�?�RW),i1XG��ߺ�N�01��#ozָA�2����D�oHݹ���WE&�P��%@� `���v�=�~[�uؼ�=���{U�4����2�p9�^��%MK��0��G�<��y�V�@5���z��a].�*��Oz����W������U�I�x�?���u;��.iSmw�#[���ˣ���|iT,�Omw�R?�lܠ�t�X!k��-hkN���d�b#X$���LX�ު��҅BC�^v����2�)@f���g�r<�xC�����,�#���$�dV}��=�<)�WP��k`���5��;�äR��|�JOǍ���P�7�����%�m���=O����N���Y�Z=�'y�;q#�*v�Y�v-�KO3�L,�D����i��D"��WS0C�u�<���b+�	��;Ґ��g(�Yy���FFŐ��1d��'*���h�ځ#���v���Gd~�o��w:� .�-h�zN���R���y����f�_�\[Q{G�hp]��K\]t(6�ض`|�u�)f�:h������~]�o��R��e�������[~]t�y��;QHgA�{��-Ԙ:�J@?�@������HGH�h�������0۵M$���������;-!�R�����7/�eT�sh�~��R���c,�a{�UO(���$�A�!�<54��4U.{__���}���-�1tY ��[���"�T�uQ$(�>�g�&�	��(&�+-\��dfi^jC�י�P���GpR&:ʁ��B��_�@۲�q�������G�~!�C�,���ɝ�"��z�Ji( 3L�&N�-w�y�HPǐ���a[�y�	��X3QEH΅z=�O�� >��C ����ꂋ.�ڲ�L�g�p�O'��@Yp�t�[�I��k��M��*+���a��4�NӀM훊�\i鯺�ϲE������ԗqs�nD����r��Y>L꟟�qm?Iy�j�Y� ��Z����XC�,������8i�o��ڶK0!U2�������̋�®�%�kg�\�]Q�0%'4�`4�#�����z��Y$b;������5����4��h���DÄ�Pǐx�����Z��Z�?��\u]��N#��7{LB��a�t��ll}p��F�k>�2��*O
E���x1�b0��R�hn�l����2׫T�UN��D����S��	�l�:�����c+����D�k��������1�'\b`��G���	����+G9�7�v	c�h�6�����%�P���bLk��$��Mit��
6Xu�7,|4�m��@�+'&��ί�����S�U�`�Y��2bf�ͯ�t��2Z�7�Af������i�}���������
��T�c+���g)�U�*�,�A��l�`F�c��A[������ng��;�I�(rX(���-����8 �i렭l����:sYWZ��1����⨫po�&��
HGH1�Y�:�!��WH�J(�<U��'H�� ���Api����G��Ĉ1J$����?�'d�6HGH1�~d����^�aT�0���qx���;<ۦ�Me�{��qW���𳰙�0sW�����2�E:B|(��Ā���j&�p4.��ǷUU�E�X���9=�"!N�8�@�!o-(��c��Y��~��9����#XB:Bʠ#�:G6�$,\V%̃y��I���m�͇�u�)B�W��6n���v�H���IE��[�"�s��E:B��7�N���ؘ<UKH�<3ع'jU1Ps�LL���L��㷰57�w")mYF�.Q��{����vG:ʂ�Bҡ�&��<ͣX͌*SEQ��EQU� 'd�@�@Y ;y'B��&$�P�|U$���a�o�c���>b�8���Ho�/�u���n��t6{�~��b�g��MRe}h����M�E�}?�zX�`<���G_�(��_��`aK�b�T�vMQ)6Q
.�1��P1�QuӼI���;�l�.�*j]��H�IH��ڄ<J��^��)��-�̢��~�i�lS��2MNK�W�sT��JϽ5�e�:�t<�7�G�?i���"�&G=��>��=	#����+S���P?������@HGH���&��w+�4A�l
Sj�D� C��0LZ)�O}*�cVh�>�4^V3��)dH���W�������YS�Op��&�S�eY�*�e���c��?��~�?1���3Y�y��ݏ?���3s�G�ad�IU�c��/�ÃIa�蠭�=�|����nQ�-��ΑS=��y���ZFt�{
F�.U伇��}i�ӵ�gYb���
����Ѷu�V�}?������x�1E&[��re�������&�b�:h�h˼���N�<�6%�j�a�U���-�M�#mn-�!���H����{{�j�Z����?^>�������t���
9��
�Y@���Z!�-9y�z��w�~�E:B�W��Bd����q@lừ2d�ͲD��?��L� �u�6�(�cSm�u���"Jz��a�M�ƛlU�`s�7"��V�7_9���f�I�!3T���;�ŧ|}÷�p��c����Z�~�' �5tU�������l3�=O8�̦!h+���8�_�2ģ+��<_��w�>��q��>�v�e��OO�[ڐ�ߞT9,%�EJ��k�ut�:�������� ���q>��s�7X�J-��E����C�$Ͼ8�[$�#iP�x�]*����H,��{e���"x"f���o,x�������?ETtܚ�����#��SbCd#D��Q�Ae/E�w=�.���1d��yt�E����K�d�d���g	˱���Q��ҦEHbn�Ȇ��o�j��X�6��&��~Z#����t�)��b�ʡ��09"{��We���M"����[)lj�$��0�W�iЋJ�X�V(�)��WäHK�E:B.�D�Q���ݧ��awݔ�����J6����}Ӫ�2���ʳ@�U%�0R��yb�p�?Yu� �=��ǳm�����u��%��(�R�W�MS�N��yoX.��4�1T>�`l��~�$z��lP%��䏃a��aN8�O�nԣ�z��a�+�P��JgH������U*.��żx�"]�=��G�������{���ժ`��iB��K�C�.&�P�Е>	Ql�>�%*S*�B�s��lQ��n�t�x]���6���$VK#��B���aK���ӡ�ae�z��-}�W���i��s����T�^omS��2�ݑ=M��7=^�@�v�U�#�^"��(=��Z�C@2�'�nB'J8ȥ]�)W]����p 7��4c�%�u�V�=]>7__�{�O�ڮ��2q�0)��i�^����da��D#*!��jZt���T�� ���-�1td�3+EVnzxQ|�j3$�ɪD���o�d��(O;��m��dQinjmm��>���5L3�Ծ�l����������.�TR�=B��S{6!w����l�ȝB�4�aV#2��r�L���oq��+����>vn*�5e�d��uզ�Cߌ�q��L�1�'*O���xnrTu�#��y/�_���`��6FI�:��C���#3gŖ��$jJ_V��U���|�f���6�l�Z����U�-�1�K�>��    g��
����C�?��,�R�8�?�	����DX�����X�2������[�SY�X9����bd��wp� L�i��N���Gb"�q;b	%u�e���\Z��
��|��+�2Ar~���!����ˎ�_�y�����')Y�9b�7	e���yB��7�3F�a���:�ԩ��ޅ���	�Ĭn��%հ��YS'�m�3���r8\\�^v(�8��$�tC�ū��5m�e껦"q��6�a�X�����dg7�/�T�9xby�J����|0Z�(�S/{w>z@�a�U!���|��ܡ��|��7�'e��yz�R�8&`+�u�X�;Ϩ�g�,�! ��g��B�R��4r������c�_>���.���"�g��%�>>���:���U��Cr�*ٍe�$�#DL�;�>�l���i�Gt��SȢ '�K��o�����aƻA:B�юV�Ȇ��q�u�WU����B1��͙�P�P1��/�������?����K���~3"#%�	MAC�p�e>�r3�F�v��2C�&�S���B;a��N�Y%,�^l�C.�JzeQ7�H������-�! ��?ρ��>��BUkqV(���2�Np�-���N�*���V�Uc�[i[
NԈ܎(R3�ԟN��+�;Z�vL����Re0G�$)/V�ps����r�k���6^���a\��d#
��d!�b���m@S�&gs�.���>�tEm]�ǉ�٣�� /�G��C:B� ��l�B�%@��>��<�(��w�0��t��^`.-�Q�`aǡ��V�-묄��*!��f�_0y�Q:��t�՝���^J�U]�NC�Ȏ�i7�n�x�	�k�H%���sږ��c��;r��C��|�#��i;��#P�tŅ�u����dwl�ȪM�������v&�X��)B��>�!q��y�`J0�5�;���U�62��+��g��(��X�>
<*��Ϧ���8��X�C�,��0�p��[���g�����������{jj�T����Q_��fI)`���R%�����gb˅�ڊ۬C\��h.7^�����N�~�w;<���C��V?M�18�c�rN����2A��
���m�Y߉����A�� �F5��>%��_����o���P���z���P�W"|<��T���0������h�~,��3��n��p��t��<(���w�0�\�����ݐ� �R���\����a�H+Fg8a��;x��?!τm렭l{G�_�� +��O��+��ƫ݀M<��a�~��r�?���ʢhd���U�@JX/�S(=R�a'�w	S#<�d~o�173Qc�"r���\K����聥��(�e����6g�{{~��CCE����؊6z/E[�U.,,��iǯ�I��r+�8!��i���DK�~�^uM�x|�g��qt �R�v�z$�q;,�����r�*\%NAod�`[�٣,��:����^Dl�B�&���P�i�e�Zd�z��ŲX���M�y�W��1ҙ��������`ߌ�ֿ�u>2�1T9�/����DC��!�j7�H��p�s��i�M�;\W\'W����3�s����*���A�����u�V��'���u'����4",�0�^"r*nD��^����9�7GJOݐ%5;l �Iպ�����yz0R]v	��b�J±��'��xe^4	Y���=�?�EgpOz١|�.-id8�9qL9�}���������x&:��6��+�=�|.��LS:IC��EU�T��F#�z{Fg�e���B��t�8p�ɺ���5��a�����(�g>d�Lf��O�kW�h$�)s�Ҳ9%'B�м����{�/K��ͫ<%J��,���[�ʥ��E�wR�^�MQ���ӂ/�	�́0z١���KK����3�)�l�g��n�����t����BC� ���V޽O!��ҵM�J�п��Ĺ��p�zO�vh�����[�������t!� lj�$��3y��=?�R��Y�ݪM
)���w�Yl��a�-���)���2���������nD:B~��U+����s20��̊���GpFz�'a�^`�%q��6��](Y�.jj<��R*��F�,y�i�M�^�Ȯ��N;�@JN��ЪH�l~<�2n�a�'�C�,��*��b#��tÆZ.˲Ծfo�P��"!�X3EChc�%٩�b�Z��}Hlhn��������B�#�1�rd#�P��~�C���:��*�~1�D�k�c�䛝� MƉ� pV�M�u��逅w��C:B� �
�l�GF\��`D�8͵a����a�ة�߲��Gc����L!Qi�h��Iey�;|�Dn�:h8GÂ�L�uX.!;�(����r�Я�ܭ�Lg��A�$����6������-�o�r�0�Lf�D�{�#�÷���=q���RA�\[;�6�xM�`Yx�P���7.�Hrd��"x�����b�X� <�+>�*����4�k�^[ݩ7Ӑ�Vv����S@�9��c��h"�X*�Dt�a7�b��Rҡ͂��I�IK�"U���|�Q�qn�<cx��:��Cq�iϡ������Z^GPv�����0]l�3�s���
dȏ̷re�
_�zkW�|Uc�_�!�+�b�x��]@}���nŲ���bX�P'6A�ϛ���Lk8Z�C��S�2�p���H�K�B϶-��;�`��z���l���QA�a��bۿ��oW���e�����C�<lU2CC�Y>|�����i�%��6�R igB��5
V7�BC��=��)���?%�w���v����If�Z�`B:B$$���C��i*�M`5��lo�6F �I�&/���_���L�D�fM�ea���[t\6ȡ|x���BCE����b+��D���UQt(����Y:5]�t���.SGD6�3�!K�D��U�剝�g��|��gB:B|�L;��&ʡ�X�[��0������bқ���#|q�(�zN�����)��^V�vI����D�(1� ʑⳄ�»�/r����j��R�-����e{�UO�cώr'������L�)���`��}O�O��g$�#��G/I�lB�Cʛ�6([֔E�HV<,E����@C�!K�V֝`�N��`VJW'r�?�3`�;�ۧ��^`���x{dg�����y���������MUd���ϸI~=۝ij�T��25$�@r��o�DJY�y��'<�yu� c������O݁�?1Fv��ΫĜ��|?^��@C/�ɧ ���8y�X�Pg������;1c:Nʘ��C�m���gZ��d]"p�yF�_��t������xZ�hd
��*�! ub
{�SƦ�MRf�u!��é'�V��nʪ[%f��i�a+�<e�4^ܵ�mb��!uLU�hKkL�^v����ZZ�2��Ghq�^������96��A[��0�/㮋*��P�u��Pf!�4��I���C�<\���[,�[���DQڄ��#5�\�`���J�����y�������"�Ra��X�;�!�:tL��^��]-(�QZ�`�Wb��<)�٢o�;����#!��=�����K� OQ��O�om9s�Y�c�Ѧ�K)��!�H��#��Lh�|�L�EH��=0�R��	'�!w* &	�~�j��$������;�H�hu�e�r�GNf�-�3�� �IQ�
�k<��b�5�u�V��-_p�ExͲ��D�	��
LsL�o�34��#�S�t�#N�lx�$"��IKl q�LL�`����,ٵ-<�C��(�ݪE�������Pnn��=�u�V�������9��a~h�*K���O[�@��u�g"a��kkޕ��.��ہG�)�y$�o��o��t�X/���v�􅒺�ÜϮL����5�`Oi��C/;T����KK'�5����Y�	ڨ���������*��cdE>�v���"�D�O�ILo �  a�0���S�#���td�J��(Dz#��(�]'f��O��l�ݑ���"��C��*д`'�z��0|�Yb��4�5�ov��A:B��#ŷ#�K����~�UҐu�A�y��}�zz�f��ڴ���}pݝ��1;i��߀�Ie���g$���u�P�߄�� �[ȮP��:Qg��0�"��������2�;G"���T�� _�N\�a\�N��~����uX�c�9�����8pD��'��SY��A�.a(��͈t��C,���g9_�CB¹ˍ�D*�����)��1d�>V$������w׃1�ۦ�Si��6~W{k�����]_\Nf`�v��Y��@��C�(9�������y2D#��A[q{OA�ຍQ1c�4 1"Դ�lT�掔7d�:hs�E@�����M%R7�R�=o���H:AC�����<�rQ�@����P�)q�v�/�N�x� E`ܰz��p��+2.Or��v$�M���hd"���J:�ch�	a^�%����[��J7S"�T���p
&u����O���{1jiX�e]a�J�w}�x�YM�}�}��]LND��u�ĳ��N�K�~�����=R����ʶOG��ם��!pWa<=�e���ɗG%)��Y�X9̕M;�[V#��
���&���j�{�T͌h���bt��İ�;���'�@���B%6_0��+w���;-�������K{�.i����a�ҰD��H�ůc�,�=�Z`�¸	��o��A�9�����y��HGHY�[���|��%�Io��a����g�_��͗o(�n�� �� ���8�
��j"~�ȥ��u"���7��=�	�(�w��������(*�K�+�]67�����u�V��e69�'�=�Jql���]U��W���/=+��}��J=\Sqe��a�I+��b�B�Z%�6>�:���l�`���a�d����a�����j���0�`&�P������ol������X���*���=<�>2�R��i%�a�@����@��Jdn���㰱n����t<~e���2�D�dP'm�2���,���0th�/�ZyǄ���ۢ�hN��v�,�8�g� �z�AD@�?�7Y��/H�w[̪�~���m�c1���ړ�%���c�k[�T����>���Ծ�LsG��j�ћ���:���\�ٗ�� d�;0m��i�V+����7Η����D��s�C}��3�X�C�,��yh�ǜ'.��٢IP�;j������y�Yޮz���QNݕ-�7�����n�B���Hp��z�}����e�:h+�>��_w��|65V�-���t�7P4Y	�Lq�:?��QG@������Na�����?�lm*L�n2�跨�e�:h+�\��������A�-����2}��G�o���a��C��tZh�p�\6��g�|6}ݛ���#8^�=!�1T2�Sl�R��&!@c���{)�Q"�%b؍+,pX2�1���\���P�vm�0|���G�c��L�[�����(�N���I�Q���޺@���c�2Xl�M"WE��<�E�I�e������1T��]�v`ӸU'y�V�~%����L/��`R��1T..�)���e�+H�)mE�r����z/`�^`/p�8�>������b��y�U�ʎ�a��DٶC/;*�ot�����
�zx�����nb%w�>���knF3�C/;��������1&�Ep.�f�eސ���f<M=��;��Ý��ߙI9�\�����ayJ�)�v�$�2�iA�O=�&t�O�dB�X>O�G3�<O���ݭ�UW���3�>�cAe�A[��a�1c��3���ՔE��E�*��z\e����U�Xy̛䅝ӕN�
�mT]���(��7�t~FG��{�c�<�\�Z��e���h�������8j������ԡ��w��,-9���$A�B��-��
��7?�?�uC�ێ��#N鑠��
+��1p"���L�:��ÓIM�.-�{�^�:<0�J,+�I�'<���b�X/0k����'��y63J�@��>+��Zv�=r��%�?�hv�e�����ĖLT�it��c�$u�p����r���@D�8�:dGҸ�Ii�[�y�W��q�R�SE[dCQ��'�'�F�mR��#<�����v=�����;F�Έ-����Za[��>��}vO#!e�u��s9���4Ym� !{��5����;:^�)���:�0o���F�g�T�+$�T���~o��?�?����*�ہ�����m��C�i�}kR����QEͬ.t�ü.�����8�c=r�%dr��0��w#���JKz١\�.-#�١n�^��k�q/s7ot�O��,�m�a��06�9�������Lܦ�����#����2���4M�brJ��l:�8��x�����Ĺ�ނ�;�GϘ�TVX?%� ?�~�K�:��M4]��5�y��wc
e��B��e�<JB:B�I����?��"y��*p��T��c�p+ �I�*�Oѡ��� �T~M[�e*�����5�j,[-u+��0[��	I��1�jD�����0�?��b�����Pv��EF�u4�&��t;\P��$��rri�-�6�t�
���2����H��C��{��j��z������;�O�`���O�I����6�;�o�u�V���X��]�}��=����үc}R���T�/��y�,`nkF=��'ؾ�X&wiKG�O+�]�c�~�J �z��[��:��q��KoAo����G��g��&���V��8=��ĩR���*��=��W����J��n�y�qk�a���ov{
��m�$v�y<q��e9�ea/��
�<�߇G�����É��";^R�YL��+��R"���W${�/��4X�#���vd�m¡�����_���7�f&      �   J   x�32153�0622�4700652�4	�[�Y�Y�p��'��q�$�$*@�
��E�%�i�\1z\\\ v,      �      x��}is�Ȓ��7��7�/�Z�����H�Mǋ`ɒ�+�A��_�2k@$�(�t�{��y@��̬̓A'I�$A~��Y���y�~�yI�G��n^��(�򏕬�F�M]�����c��/�����G�a�O��.Z���������WY�D��w���[��q$^����lw⽮wr�+ec�|+�M���������+�p�y{��zS����X-.��c�ߊ��E��f+ׅh���\0c�$�?�#��F4�a���M�?r�Իݗ�R��u��W%['a��4��$�d�ш�<�)�~���^�r�L��[9;N��(��4�'��*V������(�z��]��{���,~��o�Ea��ӳ���r�K�]%�?V�B>��M_E�fs�c�4�O�xz�6�nqWopJ��>t����ܷE]���/X��(�ei��a>�|Y�_�u���Z��P��/����_��?j=��;�C1�(?�b�.�eQ��C݈�F���(wRl�-��U��Q�GI<�� �BT�����?ޚ�Zo�|�_>\}�������!�/��A�O>�ջld���L[Y�%r�&�t��(������ZT�q�M����7�M4m%�ݦx3��CXS?�|8t&Y�R���x��i'�2X�<5FX�$�R/�&Y�D�n��deY��-�C4����Ͼh��No���1w����$�侔�Z\�J����Ľ�j��t�N8u/O��������RT��bU�6�R��/R��o��y��?���� ��0
�^`��?lf�p�8Yᘛ�:o�������6��p����G�/�bX&!g�����uWl���_B�e��h��,�O@�3D0�� 	&��b�l`�
�=Шo+q߼�;c08�w��y�eӳ�B�v�:�sۿ?�����a'�c���Lz������YuKb'�9�M����6 0|�pz.=��(��~���^��Ê���g�	W�^���6�y���^�.�����x��&q�V0"�0̦�ͭX*8�?����c'��N���\�V��!g �ϓ��oz�\|{��[��g�X�[٬���\0cVx�Y��,zK6���PJs`u~��q�/6��xz]�f�նh7��YW�K[�?�s�V`ɂ؛~�g/���{�܉����w��^�=��9�qc�0�Κi���X��:����Ճ5K8�������:m�k�k�W!��������zkj�:�s�a�餕��o��MU,~��[�!��5�[�5���]0�5����i�h��,��c�'�#l�Q��a4m�<�^���e����&�7��O���צ+����~�M[���a񭩬5�/��+=�N�4/g��[���e��c���O+��z�ӣc&�B`Cd��{Vv05D�{����b�%�)h��`+xTq�06�-L0v�%����]�a���7bz��֛jq.��Q�qK��[	_g���n(�Y���+����+6����Y�6�Y ����#c�>k<�^�r�Zt�]}��3�����X�?�T8,�7r]��~Eňp28	����ټ��� ;���S3Y���{|.�`,p�;0�0��a��bOʑ1�#�`��)���uX���,�~�է�ig��_m�!��[Trq�;M���#7�� �`�?�乄5.>��_]�˲���7
>��K_T](�p�,`��q��Ŀ��׍,�㟫�6���Ҩ@h�
#���\��I��Źh��cg�]|���N�y0���!X.�+I��׸R����A�z�k��(a�0t�g�$ӏzN6Xfs]�ѻي�U��'	Od�D��X�O5�ϖhٴ�A �x�����<C�������U�p��]�¾��ʺh�����A��Y&O���Mﮮ�7�v���6,���#�Q��k�l�X�;X f���d�C'	O�^z���R�[l`��	��|װ����?��C�v��<KR��g�98�`6�^�u��P[,|j�������v'Ј7���<������m1��v7���&��K���lq��(�<?M�g�UY�����֘5��_af�p�`��Y6]��`�5�;pL~ñ��xX)K����;�<A��Ŝ7m,0x�W���i*;�v	S�����t�y�  [*�#�7u	G��F=�Y�n�6���-W�j��#�Di���
�{p q������;��΢M:	?XV1l^���c��Y�ߟ��sw���tCf��|���O���� g������sA���9-�vp�n��XJ�n��0�vU��<�-�{,`c��˾���J�$N�4���ϧ���uӀ���9�y� �1
�D�G�C�Kx����N}�x���Z��_���e��i �w`�}�v Y��-���~\?;���q�Z�	Ӗ�`u��.kX��L����� _��q1��w��w�xl�(����l�=�Ep��0=_��Ǫ0Fo⏃=m��aR8	?,0�ؙ�:��	:k��h�,Q/�F��<OauN�?_�5^�W�ìܿ�~v�z7�eB8���U���v����Z�KL��fc>�,yY�� �Z��A�������c,z~J�!H��jr�=
�(���MP�0Sv@��[�a�`l�u]�m�;�^U��1��0舗�N(��&�3�^�]4�,����Q��l1�C_#8����i�g�)��m_u#oo��Ū(���rC� �`�bl�K����7H�;<�4f�3v�]�,�jqU��Zuq����m9@'|�v��u�/u��/�����1�1�93>fC' ��`:���,�U-�E���>zޛ{��N �z�J����f����7�g���0��s�A i�Y��&gQᷱA|�<a�h��t�̋�,̧���[��"��Q}I���c�̋�8
���Ƭ�U4�h��1`�Բ��=�3�<A L�Ӗ��v��:�e-����ur���p�Კ�1�lEU/~�������U	N͙a�+3��8�]�%x�x�v�7�f��SqJ:�Ƽ�%@��ݷ��x/Q��7l:��#,����al��X��D/��惘��]]8�w������%Z���.Ѫ��Ļ�5�u:��Dx�0�����>��ۂ�� L�A�P�_�bk32�`#���0L�x�^�'<y�F���j�S���e�#�p����랶%�fIQ/.m�9�����be�sG �O`c�o>mK|�}�r]/p#��s� ��7QJa�r�a�� �t��Co��}���`����������}�rq�_�������u*��0G�uy6}7�K�Lm]��ٴM�i�R-��?&ϑ��qq�K��b��u��|�^~�5�\��;��``�I�O�"^��n0+����,[�O���اG	S��iMgÀ���g���AV�<�0�a��s�� &��F���TZ�y*/bA�z��(��!���l��b:>��N��B<�b0�&��1E�<,�	z��͋�Kp]>�u���P�9���`c���������n[�-��i����u�ă��K�O"��[	V�}�!���a�3|#a����Ð���O	�Z��>�1c�ȏ���<Y���x��x�o/Q&�u���?D�.`2G`�T-�+[���2�m0�>RgD�"c����U{�E��nz�pt~�#c��	�r���H�k���C#��pl���1W��.��%sf�,V�&p�J��5Q>%��;��-ӏx*���s��o��<�0&x���{�-0�0�Sm>�2�]9`k�e��է��`!�R�kS5wjt̔���@��:�JL�����֮f��8a��,L�|���L��C��yۢm�y��v�`�LCȦ����腊�]�[ve�M]���O��:`k�I�3��	�fYc*j���y\�ݛͽvG�� ��؋�Z�K0�
��QYy��S�l7 �B̶d��o��{ߨ[�G~�r�!�S��1^��~UH�3
�_s�p�����"�0�Y���    �M-�R���#��X���R/R'И��0 �f�ۺ�h��+u)V��w]���q�E~r5��{L+�g����ɩ=jf���2
r�f�,�q1��s��N���;@gq��p=���k���TX�kR��L]�:`Ƭy ����1����j��V�X����G�g�1Jb������
?�h༲���7<7N��ã,b�.���,nŪ^��8��.���lD��L������i`75g�0�{0�˽ T��i��
�
V~׻�^i*�+�n	���a�{1�E�V�m��h��]H�N�KNt���g�	[��3Y���|��)3�mg�<b��+G8J�(�r	o�n��n�q��� �	�@�j�;�`��WY���`�ˋ��W=O\@�����*�F��[S5��S�$�������Q�e���ܾЁ]��g��l�����V�_`�����ƪ8���G��S�,�	�"�7R�Ac��`�ct�=�BaM0�/cV��v+0�w��ֶ�k�{+_V�N�sBf�a���ٯ�&���U�_�xK���BX��r�&�O�3�~8{��W�	;3N���ΐ�S�h-�IU�G�}��v���gj�~4�n#��I=C�Z�(f!�3Ca���L�*����`(u1��}�2��>Q�8�|��X����a
4���T��v�W�*D�"�!��%L�ү�\�j�)�X�f�U�~�]�+��'>^�2uLgk��yI0q��y�(�o�#옵�s���c��%~��K��\]]�4s�`��0çO��=&����{��f���I� l�$��陆I��&���î;�f�/	� ��W?8M����v� �&�����~QS�P����3��:d	;��ճ,��3X�o��	��?��"Z�uS�)/��J�n5�?���i$���x�b��{��o{�U3�CX� |-/��}ߚ��y���RU�]��#c����17�Op�wú�.N�=~�L]�0���W�vC�-��qj����ꁩ�-��>�u#���� ����q�zL�����J�z��X"�*k�\@�7��<��=}�U/�*�S.��~�aZ�*)q��Y3%;��u)և���(�]��Dd��WajX�L�K9$]��ڲ9�:�yA152�,���u�����[�[v'a��/̹H�S��?��u��A��gDH���r����[|D1���'h�樮kn��ai5|��H�M���0�Z7�詒��Ä��ԋ�������E�l��6�Y��c������r���j�<�"[��^zJ�N�Ou�� R�9�^�_��Ї����#�� �C�3�^y0+������9�b��V���#�)
�̚}z7I�]���K-�YĘ��(�=f�>ஃ�":��8�{r��)X,9��Dd�REiߘq����R^\@�7�f�Ĥ��z�7B���0(JWN��QªC��}n�t�.Z��_b���O`�Ox��>�~�p:/��])��ӻ��ߪQ�9@o4����ʝ\|�W������z�`GC�4J�*�;��im��=�V*+L?�=%ᡝ@�7���}��֋������nu�:��̡�)8��Qq[҈�('`0U��3�<A���Q:k
������fJ_�aq��sBf�^��t���~MQ��Ʒ�~���	9�/��a3���(f�)Z,z2�����ؘ%���;��"�X�.�T��M�����J�47N�� ���Q"\/�(m��U�:9�%ѩ�P��ei�O[����{�-e���X̣��X�`x�[fw(yT�	��.����Ag�)��]�2�3ƾ���Uù��*0V�Iq��D_R��\��?�����n�"�����Ц��8U�)��P��I�1�q�������j^��ؗ�����8a���	���������,
%��c��Y̘5���v���[[�F*r㸲�٘�����0e*���;#�i#�Ϧ���8aK?�`z&���*U(�Q���tu��"���q�T'��v�
��2����C�N�1o�e��T'=�^%V��KѶ&��b�	�N(�a��T)]����0rN�A69k*�aB8��a�E�s�H��E��6p�_�F����Qk�y��G���&
�0�yf|̆��I��n�+��e>2��7Y}��{��t��;�<E��7N���X/~��6i�bǏ�%d�����P��*k&�{8Ma����Ѩ}��P�~7�ъG�\�d̉��0�������~�hSz:s7�Y �2�RF��A�c2�F�P�9�$<J�-ak���X�t�]UK`v�j߶ݭ���r����x�&��%�����]j�.$w�� <��'��`�7|�����d��v;��?�/�r1��4o�H�nZWk:�w��<�U�6��4�J\ð��ݜ��915!���C��B�
��,t��0�Qvc�����b�������>1J�b�fI��{�[4���.���~ٽ"��p"�4�ѵk��3Gs=�܋9��/�C� /���-w���i(�!��*��������.����t�[�ȟ6L�����GUq#���@'3���y�̲��u�u��0�����Z��3f��N�����%���n���*wE_��Cg��!��~V������~Uڥ��ggk)1=W �Gg��~�Y4/�.$�Z��/V�_����p��s�{.w������}_����GS��������0�������V��^�s �a>g���w�_���R��z#�'lI�c<zz��CC.��j7�b�/q�@�7O٧o��9B-�r8K��x��l���C>��y�*|�%+����çG	S�Y�3�6+�z_�h��z�o��E�"��BG?�%O��B�S�Oƈ*�8����OF���$O��y�ÿ�����̠N#��Z�}�?L̘5�s�,8�[��'Q\�A��F��;�w��ih=�w�P����R��76P������Hr���j=��]eh萿^8j�@��� ��\ÀSӺk�F���-̟��'�]ݑ�'H�I�`��]�,������U����G	S��28-ph���JTb���	Dx�,�8-��\�ZQ�#=`��?� �9�3挪-|����j  ��	���3f͂ #z�b8�� +�`�-��i�'�	[�Y�ie���[,����StL�	F�S8���cj@��m��u�َ�x�{u��<`Sf"�F~�W]>wF�����)��1S��ct�.e�!���L�F-A��Ec*n]0�5N�0��uz't���$�I��_u�#�{`�p*k�O�S�{Q��E5rѹ�.��������Uk��ٴ�c��>b���3X�a�;��'��6x�,{���������<I��Ws��_+�B19����r�g!�3�(
����:օ`��j��qt�(����d�	.
�y���O�[��$\u��(��"�a�iC��{�3U�l>�=>
���,+7aN/f��)�%�P��v���͍6p��$`:8���a��j�J�����1c�a�2����������B�%s�E��LFǝ�d�rqS˗�a�w�S��E�*��j�.4n;�X'빛��E�s�șz�[��sO���P$@]O|;~�0����:��7�r�A4ҏW*v�P�Q�QȬ�[xu�^�ֻU�ūF�In(F^��L�ǭ���3va��W����Cs��O�L�ǏM=L�ֿ�A�.��`c�Y �<�a~�I��w�J���8׳ �a��4M{�(�e)��l_�����	?�;��
�#k���.f�����ehn0c�9�ʅ�j؊���TS�Q�#�vb0��k�1Z>gx�bŘ�L��YvF�'��J�� V
��W�催�#�. �}k3��D��e�Q[Zf{;��	6��F�穕o�}���3E�Æi��H���`�~�A����NaW��<�`+L8��LT���&��ሗ8�;�j�Ls-grA.���    Uh��{��gs�1�%z�)O�(��u3
����� G�(��
[�,nD�{��'e��c4<g�od��o����ţΛ*��CX3N��ѭ5���r]uZ�V������)Ș3Ck=���m�8��³=צ2��P�9��L���g��Y��nЎ���'l1�S�t�ƶb����V�6�����I� ���c�E�&�嚛��m��F�,b�nC��������	������4W������@�7��~iv7�k{�Z�a��Tg$yT�c���/��_�DōN� �S�����F�3?
␩�����18��ܡB�W܈[����gLF��94ԏ���y�},/a�pL�nU[�
/J:��˛�yҳ �'96Ś�g�-��u��XF�G��8�w�a�F�J�j�x���9���YĘ��28�|�����Ǚ�F����Yf��;���f����_D#�V)�7�\��,]��N�s�v������ݫ���H�t���Z?.���'����D2���ǇM���m���9/Gi�|:
t!v��w�A�]��/����Fi⇌�5�5xi6����j��$��_���>���]�2EP���4�nu�N8s,��κ�[���7��ft��G:s����q�g���ء���8Ƭ�O�p	���4S!��S��xc&v1�G	S@�3z#x�ZJ��(7�V`��M��,����'�Ko���g�rkƆ��wE�� �q�fL�/�ЪN�稻���Py�N(���($L�v�ĸ=}7��F�O/��MߒO��s$h�E���5�q4u'�}\C���T#Ga�:O�<���nރ+�����(��6̘5�C8u����B	G��zj�J��.�y��p����b�k��d�y�9��p\�j-����o,��7@>\���/DYv]��%0�`�G���
a�L������ J>t� �|k�����z���/a���L}e� "�`��<m�Ö�����K�{/v1��`c�q>v��,Ϊ�}�aC�8���K��`c���^-����m��ǾY�m�]���4)r�&wA�(;�t�4b��leM��:�0�5���������^�HSE~�H�y�cR���֔�:�X�{���r��A�p:#�O .�q�Ӿjދ^��ݵ�,��E��c	W9�vy!j���ꐛ>,���k��o��ˢ�k�h}F���4�ݒ�~ރA��Nl�/�M��i����D�6O[���f��
�;�4M4MU��#��G)v@`��s����uS�����Ww���!���2�o>+x��KZ���Ӭy��5��G�s̄M�Y��ŷR��s��!F���0�"�g��C�㾪���PP|��$O�r�0��g�C�*�P�.������f���D�+,'9��i&��}S�w�5��ϛG�<S�����K�\��w��X/[{����#X�L'�!Yץr+��WL���E�c�Uϳ�RH�Y��&��(aJ��$��	6�����R觅�Fu �y��1��Ϳ)vu9�uҫϖH��Ya�'�=��C�5���2�8N�Y �1�%d:�ܩ�dw��5f=��N�;�<C�wQ\U��gq��Tъ�$W]qrx�z�2c3�ieX	����|��A:p83N��>
c�3���O\1�Zo�A��p����\WƟ���UȪ����mw$��xr�p��P�K���-L�Ww���v�O�Ɓg1c�o/Q͟��	���p�Qn��0�^�&�w���L75jv��ze���9 ��2�~W�;�j�{�~]�,E+��$<8�Y�(�]���}*�Vk��U�7���b/�`���2߰/���B��G:�o�'��3�~g�%�7ٜI�*��s�8w"�z��ʕ�,�v2��Q��g �Oi����ߓ,e/W1�YV�V��1c����lz�*?�j�S�J�{�G���$s��g@��0�g�/��=TԶ:�]���#ܘ(�Le��V+��^tg_"�u�j�yaE�70�y%�Z<�pFﰟ��s�@J��6�N�&\��u\��P�{(�d�ʣL�q��3�Qĩ�=�8w�e��˵�*M���(�'l1F8=�s�����[ui19�n(E9�L�YL���va�����u�y3<
"�֝<_E9����~�F���(ac5D�HK�^t]��oD_�$V�=3L���/Θl�K��Ѝ�����qF�#,Y�].���?�<�"1��z���s�^�)���hw����^�mM�����Ä+��r�ϕ~�j5��ɐ6�� ၽ-ι���r{X<-����۪��,�0�������v��T3M��t`Ȉ���Q07��F�{D�NWv�е�©t�"&?�^��l۾ȁB��U�����IRp����|���k�gcZ�<?`�U&i�B8��C0Q)���؃8;o�`�;LԘ�h�Pbz���~�>�����	�,���z���i#�m�@:��LE�n0ᔔ�S�������_�t2�p��	[���󹈑�"��f�;ꥦEa�pcv��I��W\U�z�<L��b +�c����!�(Q�9 �q�_̗}	n�˦�T������IR�����$���,n���@d~X;���l�f?V^2��j�SJ�+�Iut��,��a^s�1'��^��{�K��je�x��q�8L��S���R~j�W��u�5�>��SN�4˲<fN^�J�ͺz/lI��UO��Y"Ts=���^�[1aqu��+��$<J�������g1obx��]a�%��,�[���ˮη�] �3Ca{�9M�Te��W/����v�]�I�n�1w&�،?z�*��~n=�#i�Y ዔ�/�~#}�K��N�yP����8aCI�wr2�P�`�kl��Z�M�kٱv�;�<���=N�Z�M1wt�m�Qyb���[T|?~�+�X���mF�3�&�U���&\��d��ު0���8�>��'�M�d�~�_k��n�$��@�W)3�F~Y���Ouō�Q?aU��*Vu)v�b^eӅ�����Ya�|�Ӝ<�%��ё�#��q�C'Vб��W()���fq��m
S|�+�TGՙq�q����R@,�������[�	�<h̋�E�+�����ge�Mw��q��A���ڼ��E�;���6X~� x�j�����^R�t7٥����\��uy-��g�_4r[�U[����Z}�#l̝�`Jx�=S��[\�׀�f�vË4'፼<H8���E	Fk%tcq���rR8�����$�2���\����X�o���!��������z[Wk��*����P�J9Q��G\	������t|�C����������m�
$�Qz^Ĩ��(�z�t��mڨ] �S�Ō·�6�GB�C�Cf�p�rb��T{���22�j
]�M��~<~?|�鞎<*���F��B]���%���+�m��m�׺��Gؕ�Z̜��E^�n0Ql��4��](�������Ś�a�����R��U�@c� �\.���v����@��(a��<ʹ�O�0q�H��F��	F�S ��O��FOR�]�>;� �y�]�Cle�E���������\a�k�����8N�;�����V���UQ.�����:�67N�R�Z�D�Κ��3��%�ʊS{���1K���1�k%&nSm���U\����S8X��?ua��m#J��n����_�8\��l�i���붿�H�a��0òO��Q��[�^Es� ���z-5�4??G�E�9]��pT`���t�{�\t� �����L�x%h��l�M]�]r�Q�5%��$OG9=پQ��6�>LB4�ƙay�k��*ǭP�4�%���G�c0�K0�yL��u�`��k�L�Mm訝�V�������L�\���c+�M��8a�c�k�B�B�l������xj��O�ɓ���S1dFnX;�ܒ��/�y����%i��
��/M��I���`�#,�'������D    ����I�N(�2�'��x�}~2'��B���:�.���U����|�����?�wljp/�b]�fm�Yao�Uk4s��1�I�2�wi��a��w��k炍KO�@��e1�-�NM�[��vf�w)�D��0��CTe�;\�g�-�u߇i��(/����恇� ���x�� �����J*a�CX�8�����p^W��[����;\~_VM�+[��	(y�b���V��B)�&��v�R���0��d����u9�B�:tJUZ�MN�3Ng/�3�N�g�~�'X��zg�u�bV���� �/���h#v�Q-��@ ����P�����Y09���6���C�3v�s��9}��(H��g+]�5��c,>�8a@�������s��'�s�G+l䮻��E�L1���]���4�#�y���"�Y�/ǬT�فQr��_bd�8.�6�����%�� �B�ik��*o��KS����#�aacHFQ�b[�����8aC\�1�t��$�{��u C:���Ѐ�pgQ�a�0�n�5_�~3��x��[a~;̘5D���cl��v�}�Meo��F�#�8�!�a��A�X�X�(1�^�M�D|���?n0Ҩ�b�h�x_�Ń\o�ͮ��
�2pz�pa�=��J��a�n�&m�L=��'d*��=��^�O�E)� ������-�ӔU��ES� Ii�	%+ʔ����t&��l[4DJg��R; #
[�sg{[��+��ܲ�zL �f��btA��c���!s{U]{ #b�݇�c����̭�}��2��>��/Va�����G�$T
�Ӿ�_ŋ,_U�=.��A���P���������zs�5�~֒}���\���!�یJ!j-Ju��� y�%trg(yp�0�==��u��&U�\[��U�ی�0+U���~)͇��.)���QG���bE*�ә�{�`��N�j�k��5�3�c6��KӜђ���X~{�5�Ǝ3Ä+̣�*��.�%�d�6�Q������Z�A�J������� �j���#�Y�bF���tU����uŻ��O�:���G>�V�ҡ�督z��.�MZ�*֜CFTK9��3]��X���K�nu2��0*����_� ��=+ob�A�GJ�i��YaͽH�>0�'MS���1*�G� c���,���XT��%�zݗ���r/�`����`�;�ڽț�I?�#hFٗ�znE�"[#�#�Ig|u����_11�o�4n]� !�9�b0�T���0SF5L�.Yg������;H��g�R(�����b�ef�pE~��8�?���ZI�U��ܕс�W�%�}6-�H�x�y�D���
�a3���g�GF�(��K�sna�o��:4I��,`̇�=^��d���h��{�L�Š�;�Da�(e�.�J�Ɇ}�C+h�?A94N(jcY�t&�By�a��:��P��& �+�p��X�1�J���}�6=����U�b���1[��[�t��5Vz��^h_�:�?!���q��3_��ض�����.L�ιN�g�9�d�i��ăL���Ä��b���E)k��ܵ�4Qk��=���W���Vܭ��=��Fl��b �f����	�->��~���mS��G�\$��:��,�Jr_�����sE�v���hT N��߿$~(�;퍸`k��>N?�[�^���^���C��}
L�#�H������Ն���5��p���_ê��b�SQ��5;e�� ���1[�EQeL.�P!�RlDe��q7U�Ǹ	������տD+`��-����U?ha��%�텧�<�س�]�s�O��WN(�(X��f�#f�=���4���΍��L<��ޥ+�� M�XI�Gر����u�����>x�)��~a�emW�A�^Օ�+�#��O�����E�?e���v�6�yȘk�2p �m�:i���Df��8��8�!��^��g+�z�t����i�Ӕ��UI�ZK�:�7Z0����aa��������*�5����cVU��/mz&3���NԳH�!·��M7Zjs*D��>�l��1��';j:�Dg�݊��R�����mG ��Bx���2}_#�iY��b��.ƕ�f̚��Z�3�A4�QZu6u��8~��;�3�<6���|z������֊B6t���7�t��n(�ʧN��(_� ?�yƬF�w*G�F�3l�0�L�S(���f��J�V�*���fĚ{�VbO��y��"
c��v��C�t����69q�n�E�14��Wbq[�t�qZ���e���K���rq��>��|<5FX`k�#��P���⼬W���E�*k�1�����y���u-n���so�;�M�F�C�0����(	�a��]��H�����4�Φ��T��UW��ݞ"�C+���sWT/FA�w����bl��Ag�w�Ek���5�x��Q]��no<� ��Gy�MϛG�߷Xo�����I���l(�k?8�3��ě շ���t���;�x-	s�Քz:���`9@Ɯ!�u����<|"�"�g��8���F��$�|.���^P�R�4B̕1k��a��?�_�PWmx!.�ͪn��н`;���@g��E�棾uS��Z5��d���u��8�ƼQ�ᶘY��5^ԶT˘bZ�W�	̌�;�D̊=�l�zqWoJ���v?ؗk��O�5���KY�#���j�9�<u�N�D�rk��F�n��@v����v�y�ÉC0 �������vV��`����+0��_�`�;Z0�J1��,(�_�/�L���q��y
'S�S`��~�f��y��JTqc����S�hMI����s~��1��a�ϱs�q[���CXc/�?���Jv�D��2"�&\`��W_x�S�/�>͖,?�UQ�Z|�0c���!�#���z�/6ne3 |A�+��Z.��O_�t|�4[�1�"b����<���A�
[�a��G�a��T�t|��nV��Zn�#~�!^��t �y�@)6M���ZFʆ�2��IuUη�p�����0m����<K^�L��B������N(�����G�C��j¬������'l�59�E�K�|ܛ���.�.�>s�>v��J���I���	��$�T
����X��g}[ᵿ�Дտ��Q��$�����:+[��MF��k���~�;�<E.M1+�c���Q��]��3�<_��EL�	骂�o��J��ںJ�"S ���	���e˜�஼(����p��
�^�%T��y�-�.�;���!��G����a�ʡ��w�$:n1f�Dؑ�^CWp�.š���A��J�pB�3=���2n�0w`�FvP��a�M��O��C��R��]��!H�_}��%� �9�J�pK�G'��=�N�G/�9Ę����B��Q`�T�u�]�#�����ۋ��6�տ_�tF���#��	[��(B�(3*iZ#���G�;Z��	6�=��'�M�I�;�=�	��(�$Q��������XZ��mwm_���ˮ�7&s�I� �)�Ι>-��u�yT=4�ßT �p�,��S�6�Q�Y�"�ɼ/�`7GN�1o�`�ʾ���*>w�M�����RA���oGU�2��g�%f@�0,St� l33N��fz������M������Н@��`��9���(b�:��Qu�+n��ؑ5aj�Ϫ�i�`����;D�!7aG�oL���oF�r�ji�I�kB�.gn0�4`~N����K�5u��x
}z��0 |Y�pfL{j����e�E�0�13<�B9��=��gZ��ۃ�-8�``�rU��aq]T�Qɰ�Ӝ�$s���Z��:%GG���pAf8�b��L\�4�[���
�T�|0惥����;�깳f�b�[Ms�ݑ�	� ∩|��"0��V����_Ȕ��t��Q�i�L݃�L�7�]�4Y�6[Ѽ��9a�#�F�'�f
��    �����yk7��`�<4)��\]u����23�0��AFմ����v`��v�Fe�:F�#c
�g2��������5-����n;� �9|t�1��r���o|�u9�fvō�� �7�0�R	��o}�	�J��J�!�� ��h���BI�liF��~��pbSj���U,1ӆJlÿA��<b��{V
%�����
�l�c:��lWa�v�gT������uY��������s.�
�εTW���8*�tP��j�{<w$y,
������8��$���
]=���pƇ>�q��8J�X1	#Ǫ����i�pyV&��=&(}K_��iu���#�<A��.�2�Kwh8l`ڮ�_�wt�:!���H�ʥ�L-����}�;+��M`��� �p^�QȨI�a'�� ��^����,�0b|�����m��:o����
ҧ�	W�&A�a�I���tD��H[Gat|QN ��rɪ寲_�9sT����f�zxw�0��E��v��`���_��-��r}ϊ���EYn;ٱa���q��X��d{܋�*���g7��SZU�,�0f������Ȼ怗b$!7��o�3Gp�aC NSZ�؞>���ƍm���(�>��.����X!(�Χ�	��&\X��A F��Il}��X�o�%L��p��r���|�Z����g��ԗ:9:f�� /��{���T0X&mM[��T�8q�du�I����^��(�"����� �	�P������B66!Gg~6]�ӣ�	�f�3����W�U��E5H��eYU�7Иc=�.m3���˰�Ϧ��7�J��	E���T��S�?||���b;kt��*��q�I�%�|T�[�F�Bxua��9a�=��c�il$��}]�O$V,�ǟs�Dly�v�-��8��0�Q|��AR�g� �#��G�����!��A���<�\X߮�'lI�c�5&���0�/�5Mu�y87N�� ���c��Ԏ��6p�n�e�d̉�Y���E�\W�Q��Ei�u?���Zi�I� �20���'lzU.�U7K]څ'��8aC��(d���6�C����O*�ʖ�j�sp�,y�%���|U
��kSo�p��aw�uB��1��i2}��U�1{�0���Xw���o��s��G����1�m����p��4�8��PX.�{�����5:�.�~<� �y�c���	�(��;>��oޘ5ݍ��b�(I\<�#Lr'����6�>mn�
�z8�s�7�%��s�7�^����0�C-�3&������fX@��ǹ`Ƭ>p�i�D�od'��t��!��Q�s � C"f��(�!�̅>�>��Z�0U���8a��
��&�tSҫ�@�J׊`��c�%�8�>���X�7J�C��ӣc&��J����+����,��JgaA��Æ���DEow���,J`�N�QMGa�ˮ�܇B46��K���yaL�0�zz��%^�M���-G��N�f�+n�& �.:e��<�x��g�h��p��\��W��J��i��0�3Ä+���sՂ(��u�.P��Q?�7��P�X��r��ZCw��p�z�pl�pGؘc8��3��b+D�����Q�����#�pc	K0:<Z;	��J[ԭс��Q�u��gH��S�H|��w���?q�j���0���4��^��<���
Wko�����,d��Q�\���q�?��S:�۾�\_�;�/L1�$�8�ys�`�݊� F�aB8�~c�S�NM�+�nGuSb+ a��P����X�((V_b:v��<Gؘ;�X�M�Z��;���3��z�G	��A��.��[؉�"j�2��a�)7�0�<�p��e�����������`/^�zAS�=!�y���DL�w% �m?	}����nS��}�4����q�ig=�l>q��Oe�է�jGa��T�XM�X\�؁�B���H��F��FZʜ�6��ܑ���K'ؘ;C�4�3=�T��Y���R�@�i�B���^����Et����:�͌6���35·{u�g4LZϨǔ��*���YŽ$ �\��G��f̚c���c�[��պ6ޞl�h�0��A��ғ��u��%��>mk�����Ag�ea�2
x�XL)��]�!hO�����'\�i_�Vl�X��z�d]E�<b�z`LD�ǜ���&��\մ�ܱ���������̙
k[,nj��R�m�iG�)�s ������6S�����Mv�*J��芶�ܑ�	0]V){���wR.�cˮqnW7� s�>�z�����:�"ӘrX�c �0�&�쌏{����ۗ�r�$�� �Iё�muk|��t���I�Bɓ�cpף ��s�baR��ŗ6�&KN>&�v�OL�{#w�
t������L��SrBf��r�~J�h�"���U�t���%�ː:�v��$k��s�����)`��:gt��*V:e�K��+�՗�>��Ӯ�9��ި2��d1yԾţ�׮8�'��Q��ݯ׋G�N%4�hf��eJ)��MQS��Q�Oq��E]���Ƽ�:#0�雇o���vA2m):Ag� X-��3��,������ؗ���vB8c%��ؿ����~-W��K<𥉉��nm�%g ��b�2��>C�!'i��+��B6'Ԙ^,�0�V���]�sY�D�Oa�S(3.*u)�1'������_�3���!�?c)_a�H.{�B�J]Uhό6�/˹��-�����C#~�)�K.�[?3>fC�� �"R��Vm:'c���@�"�a�M���\`��\R#�u�vCf�wq�W?1�(�.�nqTO_�.��zĎH%�U%3��� s�>�yeL�EY�`"��߃�8LqGYj��Ir.V�^���E���vg<"'��}:��i�	����R�3�-�$��[�Wz5�a�M8*�6�Cl��<f̊�I��S���[�^���jI8�o%h93��J�_Q�8�շ?Ѳ�n8����S�Rk���^z��y�S�����K��n�\��zrō���Ϣ4g�uL��� �������{�z~�2�;��^�m[�]6�̸�	;9L���GQ�i;�X/�
,�������������w�n8���g��M/��mљ�&Ae��qa�j?�r�v���B���X	����!�Q�l�L?� �.�����I��b7Y�|lCX�(<,"��(�H%�(�u��ŉ�#�y�d`33�3�N���N���\0cV?H��u���A�j�ը�7�%L��8a�C\���EqV�]+V��aɏY�`#a�1+��"���7���{����^qX���s�|
� c*����ޫ���ƣ���!�3���O��}��m�ݚGƃ��[��1�S��M���L�\����嬨�~��Ay���t�����_]��R�_tj���U����1S�%^��LF�����.��^X�5�E�0����Fx�}_%j�� �m򥪎N�&�ێ���(�T��=!T���a~h�0���F��~��'wS>1�a�O��T��wj�e;+��Okt�	Ƹ�2���R�F�V~�7��8a_��̶ikO��A��=k_:D��ea��8	B&"�Tkv�U[�TkUk0�3��
���vTmY�ˮX�8.7� �l8A��܊�`����Zc��~��q(DŜ��(W��4��(�pj�����S�N��(v�Gu�]qc�D��L��O[s�8[��-�����u��f�	�R�t�����s0��$ã���\@�[�y!c�>J�����G���g�x�)��3�r�5f��ɦܿ�+c��E���S���������r���/��arjSƗ�U�rj��5@��rz��a�_�iM�sX��� �|������VO�jS�uU��_�����������K��C�Z\K�Gg�����	� !�q���1u�]���&��޿?*T��Dx����)L�iQ��    ֈy��z��4n���0~���S/dk��ŋ(���˺Z��^Jw����_������Sh�$�J��>�j��,��{/hT;�k�\P�9	P�����+�������+؏�ğt@�2����X���[Z������]��ws�_����B���2�y�U�@+�eWF��8a�x��)R]�9+v�E����s$�|z��FP[K5^�k�l��	h�A'�����^�Wk|/��s��Ӭy���K�	4��Qm��o�o<Y�1�5g�*	���%LJ[���S9X�L'��ζ�cӺU�<��*}1�F���r-l�D��զz��1����>����W]���Q+S��3�c� �p92��yS���!U�
!�إ+���%��.6�f�K\��ݥޛvSb��9u�ZQ��m[���`�;[-粩�;��Ӵ�4�n�+k�3f��)t����f�{�j�L�]��CX����(�T�k'�wgMAU�6!���vE��Uk}܀_/�=���^QkA�����d[���O{X]c�U�*������1O`�N�d3>���VpUA�Q˘�a�����r��v�Aa'��Z���u��4L#8��g͕ҕS��̢�,���&I�O�B�U�C���:�F��kc�9���q��7�u���T���nT�zZ�f��o���dz6}�J�����맮���Z+W�*��7|��@.&�{���Z�D�V�XJ���3�׃��K�Il��֖]ع{,��"���L�K�A%f{��v�ǧC1��	֟$	Ӄ�R`�� +����5HUD�G��,
`o�:��V���J����Ę1�� �_��a��N�~9���4��'	ONEΩO]�,>�+�����&\q�ǘ�?�R�U�`�f�i;	?�Q�9�D����N�ͮ����h̛�X��LF]-�����ҏՆ�0�I�,�©T�rfu����R��]�à�S' �Bg%Q��>�৽�с��=M= |�9�'�F{_*��f�`�o��wč�s?I�˂�(P7��cԫ�Q���Ya�B�Jb�=�xU��r��K�:V�H��ӑ���Lwp��wy�*�r�0��{ә��`�4�j�an�I%VEi�+X.`����XW��X��A���������0�`'	���3f.���]4��a%m��	(y�e� b��|g�҅�M��@c^��g����}��������PݓN��8�;֥�c1��X������@�O��p�V�f�4aV2N�*��w���V?^%���o��Yq+��Ɓ鰮l��Q�yĘ1 ;�f��=o`��Mw[Ӡ`��V5�s�b�4c,�l�V/���3���X����$d���iv{�]�KG�v�Ez�%�&��9s�~���{��^^�R�U������;>L�Ɂ!���hy��� ,�]�� Z
.�������6�?�U0���IxI����0�} �}�
~�=��~`�j'�j[��}z�0��x9�E��b]�^���5�n& 6����-�C�h��P�Q;��v�����0�I���vb�G�8��ؠ�rE�?���Q[�;]�~�IKs��2�,�pf��b��
Ԯ.`���e�C�Qdu�yc6:�w���3�H�b��-��s�*� ��^�s:���Zs{kg����(a�傆�u𣁷r�V��oa���<5= �3ˁ4`�n��GU��%�a�Pc�ď���A���1/�y�ߔ6�TK̙q���l�������F7R�ֺ����$O �"VCOϣ˺�D����27�촴��3����%:�����R��>S����1O��m�pkڢ��1`րan|�ΐR��sŃ���ݫ�}�E�^z��CG�N�v�c�M!ߚ����>�%L9�g��OϘ��m�M���� ]Υ�H�E�3�d�0w?�b�ū�z�*0�h�ًJ���!�J,bjn�0�i��ݜ���)#s �`�3zo�k�}�>�����0�5G�2c*k�e��=�.���J��!�}�;N��17	`�$�������ߵU���"�YaU
a1�@s/, ,e$>a���:9J�0��[Fsa�;%�)2:,L��9a�clE�T�^c��7�#Qg�8�F��]=�1z4`���T�v�]��f�*@�7®-\��j�WZ_w����]����yaL���e:��C��=-�L�9m9`k�xy�3>�(�TW�mѶ���}��2s�6��;����\WbP<��u�v��E���^G(����+���`�<��p�` }�/�����S�=Nǵ�4��8a���1�t��Y
���-�Φjfx�(0��?q"���k��;uT��43N�"��0sN��wM:�?���hOc�ݑ�	��z���]�}��{׶Xb�p27N�r�wO����ºɮ��~_���>A]@c���1����l����쯳i�xw$y0v����P�~<w{�	z��i���	�7L..#R��9�� �:�Q���r �\ue:��������H��5f���0���v��;u�u��,��S���h���&�~�k�ζ>X�!�S�q*UWۢ�~�m[r��%�{�|�#�y�����B��r�{I�.����q�~�u���ۃ)FT��^�A�N��(ߛSM?[.���!3W�K=;FX��u��Y�E�u}&:�h|7.GC���-��Ϣ�sȐ2��Pc���9����֞���>ʠ�>�g �/�#'[�k#�׻+����H!�E�S,��9k�R)\&�U5J��J�3������X�wu�,08�{�̥��>\@���(ಪD�=���(��D����U�D،˭�V;�t��˪g�н�:�8����>s��]����6��F#��ޛ�.�O@�ϐ�,F��Z]5�KP�,�*ELl��]c��_�b~N>�g����E�oza�aj|a�X=�?������Īӏ�x��w�T#+%�%ϐ�X��Tb��6�@)��g/��6�,b̘c�N3��i�`��Ԧ����zr�0�r=�g�S��#�X������u�
$�1���=�(��	v}����_+��r�p����cy��>px���g8�["8G���^�1��
w�FR�Y��@�胄��������i�F���� � �M�,�k��/��G-�f�΂$
�[]�����\z����bkO�yĘ�Ç���h�%��{��֢�_����	W�]�r���h.V��NR�x�6k�N�ŤW���^-B���;��^7]��_�`% پ�Sz],�E�ZT��J��4��0�Q!����u���
�a���q�� ��<`��Gt�?��0�D7+;=L�� #gL����,.�͋��붻L���oVk�N���
��s\����}�������ʡ���լ|���w�v, ��a�FBy�ե�Ű{�����. ��ifL&�5l�����)`"�C�j7�ˋ��/��ɹ��<��^�w�ͫ鬼ۿ���/��(���#l�yy�>�w����y-7�a��ȉ�`:L��7ꆡi�ܩ�^1�}��,�A��Q�*Wa��8	bf�>�[ÌKk���!��c���*>���[�ɑ�mZcg1f��XM���k^�>��A��D�#�|[��c��B��2mh���(M�F'�M�(�=f?H���yo���Y �û�(c�0̔�jU^*5۞.���<b̈>\�qu�wS���Haf(4�"�Q��`L+���N	��)F�c�,�p�W����>tkt��bm�-�b��Gw�<��u]c�Ua.��͟�apjp�~E�7��k�b�'7֏b�?k��f�	W�e	�2/u�HldB�TiU}L���I��4?J	jll�ܠ^mM�1'�pa�y�j�˦ ���T��qv4~���bUus5�
/G6堏�:��P`�*N ��I1��%�D���k�ێ)��@�ʰs����S�Y�g�U��cJM�z��7ؘ;�2��a��j/�ۿ��U�7 |�l3VW��,0���������X)7 %	  �;&���������۶���28�/fM�s���aE���߷���u�v���[�D�a61���-�5p��{S�zr� �ia�;��j��Vm�#Tӡ>�~1aM�[¬�o-���v�v7�ʵ�'��8`+�o�3k�^�S��P�����)���Z�pC��}�����Y`����mtygѽ�\@�%.R.c�A�Q�E�f�|�c�%��'L�u#����;��(�ҥ����:i�P�9��{�.֢�v/���Q%m.�1/���1���7n樺Ǥ]][S%�4 |J���Ϻ�40�*�M��YjaL�4J���J{��9������Ihr�<�Q�a:���X��KUì���
��jp̃A�4��p���+z��N�yጰ���ںz�4��v�H��-�� �3�Q�������Lx��7�x7=Z���#��6�r��*E�ݪv���?A�Tθ��o�l��FB�>c�g���FI��i[���5f!t��}��i��$�p֨v�t��.���.#kt5����n�N�dM��G��~�έVI�s ��vpVvfꋾ'Ѷ�͠Q�s ����{�j iNڻ�^'C��N(�&�6��&g?P�����S���	��1<;�Z/%�Jc�޾���O��%s�"�l�6�F��v��}�6X-��#�q��n�ݮ*Bc�X�{���F���ȧO�3X���M�][ͮS�5�
��^�c7U&kKaE��kjX�]��0��xs�{/� �|�Z�]D���GFX��V2=�nj�g����#��H��ar��'ֻ��X�l?��=�i�s�1c�7���M/�<��Pȵ6�����iю8�z*����-�`����8a�7I���<C�?��uW|ok�m�a�;����z�%7b�U�u��I���,��B��� ���j�����	~ry�J:к8�[�1�i*pg�	���?�-��;��؆�l΢���`a�hJv*��:*������ә֒�#�7����(�)�����}��/L���j�WI��l�Z��a�;L�V�	ſ�VO�q�8�s�I2.�uUb�����W0M��Ӄ�S�#.nu����R�^� � Pߧ��Gܘ�W*g\��\����̏zk[���N�z@�P�,�԰�P���Ŵ'{*�'���4�3�BL��C�]؁�X�9*��zX��
��3j��{|0�3n�N9l�.��T&%xdXDt<c�kxt�����Y�,F����?����4x3s�Pw�3�-��+���
Q��^&U�� ������c���_���?6J@��v<TW'a/������V�]�ze�6���6"M�z���Ng�]m)������*�G�ޕ��'��i2���./p�c�^��J�/jᾕBg���쑗�H8mᘺ��r��I��V�����0J����J���˿Qʁ�,���y����)��(�o�1�]+�y�#�p������F��x�M�h�H��6���a��>n�����^��&����>3N����a:���];�h�l��]��v������:L�=��ۦ9�u��VPyB8�2)�ڲ��QT�N{�ͫ��Y �]�?�1/�:A�*��iz�{�s��[��<E���~�)'�k^��j�%��h���&���*�(��Y�m_���C��uAf ��3��6V����^��oe��i̘5�3��|F��b#~/�*��hNt���8_m4�\0�p}���ITJW��Rv�����	CXS0GR������-�v6<:p�~�#�y��X0��$K%�5Z������1g�xĬ�s�|�`^<ԛ�*^��a����Ϭ����������z���v��4M2��f��]!����4]�;�ؚs��Y����;!Vv���ӄnՃ�� �O�bR�B��yE��K���.77N�b�-.6u+�k��q���A��b���4��˰zܷ���H�W��!F�>v@Da���rV���c�n
0�~ߣ���`�S�5�)���6�1]�Q��{����Bq��8��1����P�>k��"�	��������#����w����.&i3f����Ϙ��V�mP/�3��j<�w(y�.�Cb�n�m~G��k�O.�"���(>���MQ��\�ܹa�R��N8��(x�ਂge����B^wg�3�����?������㤂�H�C���|��>ȶ��;޸�,���������<      �   �  x��Y�n!}����U`�|K^|�T�R�&�ҿ/�v7��p�K	�ցfs�AD�R�@/�Fn�O��y�q��t��O����ӟ��������ۼ�>������C�,�+�Z���G�Co5J�h� GT��C���D���#J��QY%�kq�"�S��p �|�N�+���zlǰa;�	�)ׄ��Vf��1a�&lɰ�R��	�qad��5��J�T@�и{���h�봠#C���)�a�a��ὓ�aVZe�l�K�Ǹ���a�kr֠�谐?@�3		_7�Z�_��C>�x���h#�X�'ԋ&gu;����$������b�c���}~*�x��X�s�xo:j_�s	�(*��W��P������UV��B���$�^���s���^yO��Y1��U����F�k�ݨ#2������X���<�/=VD3�[[�r��/]�����[D]�l�I{���o�q�Ky����OS����㛺��J��.1������2&�Ts��e��n���;�y��.qH���欳Kw~5?N��)����A��A��݃ƙ��3p��4ζ=h�;��y������z������zG4M^ WE@�%���O��2��!��N���_��#Ц��U��*��f��k�%��Y���pvt9*:�h<���H���mv�SM4n��Z��kl�C�lis`�q����m5t���Bq(�~u�=�y��ֳ�R����xq��3�P��T(3I�v����,�J�������ػ��34�ߣ�9cH�8��ReJ�د��T=绤�R^���
G/y,��kU֚��2_��{wM#��M�oj�В�b�I���5W�����01�c�T�ew�d-�l�z�5�a���ma���,��N��}���K}(ȽQ!K�$dK�����I���S��97kKNz���vz�W��#��bל�[!/��ا�G���E]�:�Nq����ƍ��Y�5`�?�����`��Atߤ{6�,̣���}y�n�� ����      �   a  x�E�Ɏ�F �sx"l0ˑ}���X�4?t�c��3Vy��U��pq�믨"�̉�Ӽ�C|�R>�ߒ|� j��tÂ8��w!�����u�lJ���tJj�����#�b��H�|��w���;�{����~�� ��F�t��);�eu(������M��C�e�.�4��X�L6cOpmÄc���)'���N1#,�kk�o��j2�'pA���a��B���繙�:�L2"����r��-|���^�KD i���
J��	��I%�A�G#ㅾ�[u��Ɨn�;�
��ľ��cB(2t����f_'s�����	�������(�Ȁb��{��(5+7*t^P��>�
&A���p�N��Z5�;dR��[��[%�6G;9y��t0��ї����q=k�f�r�h�Goթh�w����q�8[�vX
�#��])D��a�+'w��e�`?q�sz���q�ݖe�2�<Sպ4*!�p8����NE4�AT��$�Q����h���[L�S�{}��qe���1���Tn!��7}�*Ykk���?}������TI�zX7�;������}|�E�{�q����������:     