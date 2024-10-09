local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-canought') {
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
    orgs.newRepo('can-translator') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "can-translator",
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
