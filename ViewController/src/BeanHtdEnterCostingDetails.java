
import java.util.List;

import oracle.adf.view.rich.component.rich.input.RichInputDate;
import oracle.adf.view.rich.component.rich.input.RichInputText;
import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;
import oracle.adf.model.BindingContext;


public class BeanHtdEnterCostingDetails {
    private RichInputText programId;
    private RichInputDate closingDate;

    public BeanHtdEnterCostingDetails() {
    }

    public void setProgramId(RichInputText programId) {
        this.programId = programId;
    }

    public RichInputText getProgramId() {
        return programId;
    }

    public String closeHeader() {
        java.util.Date dateUtil = (java.util.Date)this.closingDate.getValue();
        java.sql.Date closeDate = new java.sql.Date(dateUtil.getTime());
        int programID = Integer.parseInt(this.programId.getValue().toString());
        BindingContainer bc =
                           BindingContext.getCurrent().getCurrentBindingsEntry();
                       OperationBinding operation = bc.getOperationBinding("closeHeader");
                       List list = bc.getOperationBindings();
                       //System.out.println(new.getValue().toString());

                       if (operation != null) {
                           operation.getParamsMap().put("programId",programID);
                           operation.getParamsMap().put("closingDate",closeDate);
                           operation.execute();
                       } else {
                           System.out.println("Operation is nulll");
                       }
        return null;
    }

    public void setClosingDate(RichInputDate closingDate) {
        this.closingDate = closingDate;
    }

    public RichInputDate getClosingDate() {
        return closingDate;
    }
}
