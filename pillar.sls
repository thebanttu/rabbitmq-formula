# -*- coding: utf-8 -*-
# vim: ft=yaml
---
rabbitmq:
  erlang_cookie: g+fhl5apYOiTTNjpt54r/w==
  nodes:
    rabbit:  # default node name
      config:
        auth_backends.1: internal   # default
        listeners.tcp.1: 0.0.0.0:5672
        # https://www.rabbitmq.com/consumers.html#acknowledgement-timeout
        consumer_timeout: 3600000
        # https://www.rabbitmq.com/ldap.html
        # auth_backends.2: ldap
        # auth_ldap.servers.1: ldapserver.new
        # auth_ldap.servers.2: ldapserver.old
        # auth_ldap.user_dn_pattern: cn=${username},OU=myOrg,DC=example,DC=com
        # auth_ldap.log: false
        # auth_ldap.dn_lookup_attribute: sAMAccountName  # or userPrincipalName
        # auth_ldap.dn_lookup_base: OU=myOrg,DC=example,DC=com
      plugins:
        - rabbitmq_management
        #- rabbitmq_federation
        #- rabbitmq_federation_management
        #- rabbitmq_auth_backend_ldap
        - rabbitmq_shovel
        - rabbitmq_shovel_management
      vhosts:
        - /
      queues:
        BIKO_SENDSMS:
          user: biko
          passwd: b1k0isth3REAL001
          vhost: /
          durable: 'true'
          auto_delete: 'false'
        WithDraw_30750439:
          user: biko
          passwd: b1k0isth3REAL001
          vhost: /
          durable: 'true'
          auto_delete: 'false'
        MTS_FEEDS_QUEUE:
          user: biko
          passwd: b1k0isth3REAL001
          vhost: /
          durable: 'true'
          auto_delete: 'false'
        BIKO_WINNER_MESSAGES_QUEUE:
          user: biko
          passwd: b1k0isth3REAL001
          vhost: /
          durable: 'true'
          auto_delete: 'false'
        BIKO_WITHDRAWAL_QUEUE:
          user: biko
          passwd: b1k0isth3REAL001
          vhost: /
          durable: 'true'
          auto_delete: 'false'
        WITHDRAWAL_STATUS:
          user: biko
          passwd: b1k0isth3REAL001
          vhost: /
          durable: 'true'
          auto_delete: 'false'
        GREMS_BET_TRANSACTION_QUEUE:
          user: biko
          passwd: b1k0isth3REAL001
          vhost: /
          durable: 'true'
          auto_delete: 'false'
        GREMS_BET_TRANSACTION_RESPONSE_QUEUE:
          user: biko
          passwd: b1k0isth3REAL001
          vhost: /
          durable: 'true'
          auto_delete: 'false'
        GREMS_BET_UPDATE_QUEUE:
          user: biko
          passwd: b1k0isth3REAL001
          vhost: /
          durable: 'true'
          auto_delete: 'false'
        GREMS_ACCOUNT_UPDATE_QUEUE:
          user: biko
          passwd: b1k0isth3REAL001
          vhost: /
          durable: 'true'
          auto_delete: 'false'
        GREMS_ACCOUNT_UPDATE_RESPONSE_QUEUE:
          user: biko
          passwd: b1k0isth3REAL001
          vhost: /
          durable: 'true'
          auto_delete: 'false'
        GREMS_BET_UPDATE_RESPONSE_QUEUE:
          user: biko
          passwd: b1k0isth3REAL001
          vhost: /
          durable: 'true'
          auto_delete: 'false'
      bindings:
        BIKO_SENDSMS_QUEUE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          source: BIKO_SENDSMS_EXCHANGE
          destination: BIKO_SENDSMS_QUEUE
          routing_key: BIKO_SENDSMS_ROUTE
          destination_type: queue
        MTS_FEEDS_QUEUE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          source: MTS_FEEDS_EXCHANGE
          destination: MTS_FEEDS_QUEUE
          routing_key: MTS_FEEDS_ROUTE
          destination_type: queue
        BIKO_WINNER_MESSAGES_QUEUE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          source: BIKO_WINNER_MESSAGES_EXCHANGE
          destination: BIKO_WINNER_MESSAGES_QUEUE
          routing_key: BIKO_WINNER_MESSAGES_ROUTE
          destination_type: queue
        BIKO_WITHDRAWAL_QUEUE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          source: BIKO_WITHDRAWAL_EXCHANGE
          destination: BIKO_WITHDRAWAL_QUEUE
          routing_key: BIKO_WITHDRAWAL_ROUTE
          destination_type: queue
        WITHDRAWAL_STATUS:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          source: WITHDRAWAL_STATUS
          destination: WITHDRAWAL_STATUS
          routing_key: WITHDRAWAL_STATUS
          destination_type: queue
        GREMS_BET_TRANSACTION_QUEUE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          source: GREMS_BET_TRANSACTION_EXCHANGE
          destination: GREMS_BET_TRANSACTION_QUEUE
          routing_key: GREMS_BET_TRANSACTION_ROUTE
          destination_type: queue
        GREMS_BET_TRANSACTION_RESPONSE_QUEUE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          source: GREMS_BET_TRANSACTION_RESPONSE_EXCHANGE
          destination: GREMS_BET_TRANSACTION_RESPONSE_QUEUE
          routing_key: GREMS_BET_TRANSACTION_RESPONSE_ROUTE
          destination_type: queue
        GREMS_BET_UPDATE_QUEUE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          source: GREMS_BET_UPDATE_EXCHANGE
          destination: GREMS_BET_UPDATE_QUEUE
          routing_key: GREMS_BET_UPDATE_ROUTE
          destination_type: queue
        GREMS_ACCOUNT_UPDATE_QUEUE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          source: GREMS_ACCOUNT_UPDATE_EXCHANGE
          destination: GREMS_ACCOUNT_UPDATE_QUEUE
          routing_key: GREMS_ACCOUNT_UPDATE_ROUTE
          destination_type: queue
        GREMS_ACCOUNT_UPDATE_RESPONSE_QUEUE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          source: GREMS_ACCOUNT_UPDATE_RESPONSE_EXCHANGE
          destination: GREMS_ACCOUNT_UPDATE_RESPONSE_QUEUE
          routing_key: GREMS_ACCOUNT_UPDATE_RESPONSE_ROUTE
          destination_type: queue
        GREMS_BET_UPDATE_RESPONSE_QUEUE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          source: GREMS_BET_UPDATE_RESPONSE_EXCHANGE
          destination: GREMS_BET_UPDATE_RESPONSE_QUEUE
          routing_key: GREMS_BET_UPDATE_RESPONSE_ROUTE
          destination_type: queue       
      exchanges:
        BIKO_SENDSMS_EXCHANGE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          durable: 'true'
          type: direct
          internal: 'false'
          auto_delete: 'false'
        MTS_FEEDS_EXCHANGE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          durable: 'true'
          type: direct
          internal: 'false'
          auto_delete: 'false'
        BIKO_WINNER_MESSAGES_EXCHANGE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          durable: 'true'
          type: direct
          internal: 'false'
          auto_delete: 'false'
        BIKO_WINNER_MESSAGES_QUEUE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          durable: 'true'
          type: direct
          internal: 'false'
          auto_delete: 'false'
        BIKO_WITHDRAWAL_EXCHANGE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          durable: 'true'
          type: direct
          internal: 'false'
          auto_delete: 'false'
        BIKO_WITHDRAWAL_QUEUE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          durable: 'true'
          type: direct
          internal: 'false'
          auto_delete: 'false'
        WITHDRAWAL_STATUS:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          durable: 'true'
          type: direct
          internal: 'false'
          auto_delete: 'false'
        GREMS_BET_TRANSACTION_EXCHANGE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          durable: 'true'
          type: direct
          internal: 'false'
          auto_delete: 'false'
        GREMS_BET_TRANSACTION_RESPONSE_EXCHANGE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          durable: 'true'
          type: direct
          internal: 'false'
          auto_delete: 'false'
        GREMS_BET_UPDATE_EXCHANGE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          durable: 'true'
          type: direct
          internal: 'false'
          auto_delete: 'false'
        GREMS_ACCOUNT_UPDATE_EXCHANGE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          durable: 'true'
          type: direct
          internal: 'false'
          auto_delete: 'false'
        GREMS_ACCOUNT_UPDATE_RESPONSE_EXCHANGE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          durable: 'true'
          type: direct
          internal: 'false'
          auto_delete: 'false'
        GREMS_BET_UPDATE_RESPONSE_EXCHANGE:
          user: biko
          passwd: 'b1k0isth3REAL001'
          vhost: /
          durable: 'true'
          type: direct
          internal: 'false'
          auto_delete: 'false'

      remove_guest_user: true
      users:
        biko:
          password: b1k0isth3REAL001
          force: true
          tags:
            - applications
            - monitoring
            - user
          perms:
            /:
              - '.*'
              - '.*'
              - '.*'
        saltstack_mq:
          password: chumvi_kidogo
          force: false
          tags:
            - administrator
            - management
          perms:
            /:
              - '.*'
              - '.*'
              - '.*'
        airflow:
          password: 'airflow'
          force: true
          tags:
            - management
            - administrator
          perms:
            '/':
              - '.*'
              - '.*'
              - '.*'
      parameters:
        #my-federation-upstream-set:
        #  component: federation-upstream-set
        #  definition:
        #    # todo: multiple dict items (not just one)
        #    upstream: my-federation-upstream1
        #  vhost: default_vhost
        #my-federation-upstream1:
        #  component: federation-upstream
        #  definition:
        #    uri: 'amqp://saltstack_mq:chumvi_kidogo@localhost'
        #    ack-mode: on-confirm
        #    trust-user-id: true
        #    max-hops: 1
        #  vhost: default_vhost
      policies:
        #my-federation-policy1:
        #  definition:
        #    federation-upstream-set: all
        #  pattern: '^federated1\.'
        #  priority: 1
        #  vhost: default_vhost
        #my-federation-policy2:
        #  definition:
        #    federation-upstream-set: my-federation-upstream-set
        #  pattern: '^federated2\.'
        #  priority: 1
        #  vhost: default_vhost
        my-ha-policy:
          definition:
            ha-mode: nodes
            ha-params: ["rabbit"]
          pattern: '.*'
          priority: 1
          vhost: default_vhost

  pkg:
    # https://github.com/rabbitmq/rabbitmq-server/releases/tag/v3.8.14
    use_upstream: repo  # if available (i.e. packagecloud)
  environ:
    locale_all: en_US.UTF-8
    values: {}
    # https://www.rabbitmq.com/relocate.html
    # rabbitmq_mnesia_base: /var/lib/rabbitmq/mnesia
    # RABBITMQ_USE_LONGNAME: true  # not working in ci
    # https://www.rabbitmq.com/configure.html#supported-environment-variables
    # RABBITMQ_LOG_BASE: /var/log/rabbitmq
  dir:
    base: /var/lib/rabbitmq

  tofs:
    # The files_switch key serves as a selector for alternative
    # directories under the formula files directory. See TOFS pattern
    # doc for more info.
    # Note: Any value not evaluated by `config.get` will be used literally.
    # This can be used to set custom paths, as many levels deep as required.
    files_switch:
      - any/path/can/be/used/here
      - id
      - roles
      - osfinger
      - os
      - os_family
    # All aspects of path/file resolution are customisable using the options below.
    # This is unnecessary in most cases; there are sensible defaults.
    # Default path: salt://< path_prefix >/< dirs.files >/< dirs.default >
    #         I.e.: salt://rabbitmq/files/default
    # path_prefix: template_alt
    # dirs:
    #   files: files_alt
    #   default: default_alt
    # The entries under `source_files` are prepended to the default source files
    # given for the state
    # source_files:
    #   rabbitmq-config-file-file-managed:
    #     - 'example_alt.tmpl'
    #     - 'example_alt.tmpl.jinja'

    # For testing purposes
    source_files:
      rabbitmq-config-file-file-managed:
        - 'example.tmpl.jinja'

  # Just for testing purposes
  winner: pillar
  added_in_pillar: pillar_value
