local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('iot.kanto.canought', 'eclipse-canought') {
  settings+: {
    description: "",
    name: "Eclipse Canought",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('.github') {
    },
    orgs.newRepo('can-manager') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "can-translator",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('can-translator') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "can-translator",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('up-cpp-client') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "uProtocol C++ client for CAN Translator",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('up-cpp-server') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "uProtocol C++ server for CAN Translator",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('can-translator-client') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "can-translator-client",
      web_commit_signoff_required: false,
    },
  ],
}
