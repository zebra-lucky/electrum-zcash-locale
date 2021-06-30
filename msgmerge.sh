#!/bin/bash

# find electrum_zcash -type f -name '*.py' -o -name '*.kv' > app.fil
# xgettext -s --from-code UTF-8 --language Python --no-wrap -f app.fil --output=messages.pot

for ldir in locale/*/
do
    ldir=${ldir%*/}
    ldir=${ldir##*/}
    msgmerge locale/${ldir}/electrum.po locale/messages.pot > electrum.po
    mv electrum.po locale/${ldir}/
done
