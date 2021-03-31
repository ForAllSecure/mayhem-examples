#!/bin/sh

# Package testme.
mayhem package ./testme_go -o /tmp/go-pkg

# Copy over our Mayhemfile
cp Mayhemfile /tmp/go-pkg

# Copy over our corpus
cp corpus/* /tmp/go-pkg/corpus/

# Run mayhem. The run ID is saved to $id
id=$(mayhem run /tmp/go-pkg)

# Wait for the run to finish
mayhem wait $id

# Sync the test suite to the "corpus" directory.
mayhem sync /tmp/go-pkg

