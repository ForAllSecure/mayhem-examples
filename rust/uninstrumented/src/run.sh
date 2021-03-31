#!/bin/sh

# Package testme.
mayhem package ./testme_rust -o /tmp/rust-pkg

# Copy over our Mayhemfile
cp Mayhemfile /tmp/rust-pkg

# Copy over our corpus
cp corpus/* /tmp/rust-pkg/corpus/

# Run mayhem. The run ID is saved to $id
id=$(mayhem run /tmp/rust-pkg)

# Wait for the run to finish
mayhem wait $id

# Sync the test suite to the "corpus" directory.
mayhem sync /tmp/rust-pkg

