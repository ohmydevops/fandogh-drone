#!/bin/bash

export TZ='Asia/tehran';

if [[ "$PLUGIN_USERNAME" = "" || \
      "$PLUGIN_PASSWORD" == "" || \
      "$PLUGIN_MANIFEST_PATH" = "" || \
      "$PLUGIN_VERSION" = "" \
    ]]; then
        echo "Please Set ENVs !"
        exit 1
fi

COLLECT_ERROR=True fandogh login --username=$PLUGIN_USERNAME --password=$PLUGIN_PASSWORD
fandogh service apply -f $PLUGIN_MANIFEST_PATH -p VERSION=$PLUGIN_VERSION -d
exit 0