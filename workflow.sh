#! /usr/bin/bash

# # export STACKS=($(aws cloudformation list-stacks \
# #     --query "StackSummaries[*].StackName" \
# #     --stack-status-filter CREATE_COMPLETE --no-paginate --output text))
# # echo stack names : "${STACKS[@]}"

# export OldWorkflowID=$(aws cloudformation \
#         list-exports --query "Exports[?Name==\`WorkflowID\`].Value" \
#         --no-paginate --output text)
# echo $OldWorkflowID > workflowid.txt
# cat  workflowid.txt

# if [[ "${STACKS[@]}" =~ "$" ]]
# then

#     echo "success" 
#     # aws s3 rm "s3://udapeople-${OldWorkflowID}" --recursive
#     # aws cloudformation delete-stack --stack-name "udapeople-backend-${OldWorkflowID}"
#     # aws cloudformation delete-stack --stack-name "udapeople-frontend-${OldWorkflowID}"            
# fi
              export OldWorkflowID=$(aws cloudformation \
                      list-exports --query "Exports[?Name==\`WorkflowID\`].Value" \
                      --no-paginate --output text)
              echo " OldWorkflowID: $OldWorkflowID "
              echo " CIRCLE_WORKFLOW_ID : $CIRCLE_WORKFLOW_ID:0:7"
              # Fetch the stack names          
              curl https://kvdb.io/RVi1ZiRv5vWhbP8KprKnNK/old_workflow_id -d $OldWorkflowID