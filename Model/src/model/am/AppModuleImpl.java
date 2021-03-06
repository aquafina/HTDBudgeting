package model.am;

import java.sql.Date;

import java.sql.PreparedStatement;

import java.sql.SQLException;

import model.am.common.AppModule;

import oracle.jbo.JboException;
import oracle.jbo.server.ApplicationModuleImpl;
import oracle.jbo.server.ViewLinkImpl;
import oracle.jbo.server.ViewObjectImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Thu May 29 23:06:56 PKT 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class AppModuleImpl extends ApplicationModuleImpl implements AppModule {
    /**
     * This is the default constructor (do not remove).
     */
    public AppModuleImpl() {
    }

    /**
     * Container's getter for VO_XxSalesPlanningProgram1.
     * @return VO_XxSalesPlanningProgram1
     */
    public ViewObjectImpl getVO_XxSalesPlanningProgram1() {
        return (ViewObjectImpl)findViewObject("VO_XxSalesPlanningProgram1");
    }

    /**
     * Container's getter for VO_XxHtdBudgetLines1.
     * @return VO_XxHtdBudgetLines1
     */
    public ViewObjectImpl getVO_XxHtdBudgetLines1() {
        return (ViewObjectImpl)findViewObject("VO_XxHtdBudgetLines1");
    }

    /**
     * Container's getter for VO_XxSalesPlanningProgram2.
     * @return VO_XxSalesPlanningProgram2
     */
    public ViewObjectImpl getVO_XxSalesPlanningProgram2() {
        return (ViewObjectImpl)findViewObject("VO_XxSalesPlanningProgram2");
    }

    /**
     * Container's getter for VO_XxHtdBudgetLines2.
     * @return VO_XxHtdBudgetLines2
     */
    public ViewObjectImpl getVO_XxHtdBudgetLines2() {
        return (ViewObjectImpl)findViewObject("VO_XxHtdBudgetLines2");
    }

    /**
     * Container's getter for VO_XXHtdBudgetHeader1.
     * @return VO_XXHtdBudgetHeader1
     */
    public ViewObjectImpl getVO_XXHtdBudgetHeader1() {
        return (ViewObjectImpl)findViewObject("VO_XXHtdBudgetHeader1");
    }

    /**
     * Container's getter for VO_XxSalesPlanningProgram3.
     * @return VO_XxSalesPlanningProgram3
     */
    public ViewObjectImpl getVO_XxSalesPlanningProgram3() {
        return (ViewObjectImpl)findViewObject("VO_XxSalesPlanningProgram3");
    }

    /**
     * Container's getter for VO_XXHtdBudgetHeader2.
     * @return VO_XXHtdBudgetHeader2
     */
    public ViewObjectImpl getVO_XXHtdBudgetHeader2() {
        return (ViewObjectImpl)findViewObject("VO_XXHtdBudgetHeader2");
    }

    /**
     * Container's getter for VL_ProgramLines.
     * @return VL_ProgramLines
     */
    public ViewLinkImpl getVL_ProgramLines() {
        return (ViewLinkImpl)findViewLink("VL_ProgramLines");
    }

    /**
     * Container's getter for VL_ProgramHeader.
     * @return VL_ProgramHeader
     */
    public ViewLinkImpl getVL_ProgramHeader() {
        return (ViewLinkImpl)findViewLink("VL_ProgramHeader");
    }
    public void closeHeader(int programId,Date closingDate){        
        PreparedStatement st = null;
                        Object[] bindVariables = {programId,closingDate};
                        try {
                            st =
                 getDBTransaction().createPreparedStatement("begin close_header(?,?) ;end;", 0);
                        


                            st.setObject(1,programId);
                            st.setObject(2, closingDate);
                            st.executeUpdate();
                        } catch (SQLException e) {
                            throw new JboException(e);
                        } finally {
                            if (st != null) {
                                try {
                                    // 5. Close the statement
                                    st.close();
                                } catch (SQLException e) {
                                }
                            }
                        }
    }
   
}
