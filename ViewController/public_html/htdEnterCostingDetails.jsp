<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<f:view>
  <af:document id="d1">
    <af:messages id="m1"/>
    <af:form id="f1">
      <af:pageTemplate viewId="/budgetingTemplate.jspx" id="pt1">
        <f:facet name="content">
          <af:panelGroupLayout id="pgl1" layout="scroll"
                               inlineStyle="padding:10px;">
            <af:panelBox text="Program" id="pb1" background="medium">
              <f:facet name="toolbar"/>
              <af:panelGroupLayout id="pgl3" layout="vertical"
                                   inlineStyle=';'>
                <af:panelFormLayout id="pfl1"
                                    inlineStyle="width:322px;border:1px #adadad solid;margin-bottom:5px;padding:5px;border-radius: 10px">
                  <af:inputText value="#{bindings.ProgramId.inputValue}"
                                label="#{bindings.ProgramId.hints.label}"
                                required="#{bindings.ProgramId.hints.mandatory}"
                                columns="#{bindings.ProgramId.hints.displayWidth}"
                                maximumLength="#{bindings.ProgramId.hints.precision}"
                                shortDesc="#{bindings.ProgramId.hints.tooltip}"
                                id="it2" visible="false" partialTriggers="soc1">
                    <f:validator binding="#{bindings.ProgramId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.ProgramId.format}"/>
                  </af:inputText>
                  <af:selectOneChoice value="#{bindings.ProgramName1.inputValue}"
                                      label="Program Name"
                                      required="#{bindings.ProgramName1.hints.mandatory}"
                                      shortDesc="#{bindings.ProgramName1.hints.tooltip}"
                                      id="soc1" autoSubmit="true"
                                      contentStyle=" width:187px">
                    <f:selectItems value="#{bindings.ProgramName1.items}"
                                   id="si1"/>
                  </af:selectOneChoice>
                  <f:facet name="footer">
                    <af:panelGroupLayout layout="horizontal" id="pgl2">
                      <af:commandButton actionListener="#{bindings.First.execute}"
                                        text="First"
                                        disabled="#{!bindings.First.enabled}"
                                        partialSubmit="true" id="cb4"
                                        inlineStyle="width:65px; text-align:center;"
                                        icon="/images/f.png"/>
                      <af:commandButton actionListener="#{bindings.Previous.execute}"
                                        text="Previous"
                                        disabled="#{!bindings.Previous.enabled}"
                                        partialSubmit="true" id="cb3"
                                        inlineStyle="width:65px; text-align:center;"
                                        icon="/images/p.png"/>
                      <af:commandButton actionListener="#{bindings.Next.execute}"
                                        text="Next"
                                        disabled="#{!bindings.Next.enabled}"
                                        partialSubmit="true" id="cb2"
                                        inlineStyle="width:65px; text-align:center;"
                                        icon="/images/n.png"/>
                      <af:commandButton actionListener="#{bindings.Last.execute}"
                                        text="Last"
                                        disabled="#{!bindings.Last.enabled}"
                                        partialSubmit="true" id="cb1"
                                        inlineStyle="width:65px; text-align:center;"
                                        icon="/images/l.png"/>
                    </af:panelGroupLayout>
                  </f:facet>
                </af:panelFormLayout>
                <p>
                  &nbsp;
                </p>
              </af:panelGroupLayout>
            </af:panelBox>
            <af:panelBox text="Kuch Is tarha" id="pb2" background="medium"
                         inlineStyle="margin-top:7px;">
              <f:facet name="toolbar">
                <af:toolbar id="t2">
                  <af:panelGroupLayout id="pgl4" layout="horizontal"
                                       inlineStyle='background-image:url("images/background.png");padding:3px'>
                    <af:inputDate label="Select Closing Date:" id="id3"
                                  contentStyle="font-weight:bold;"
                                  inlineStyle="font-weight:bold;"
                                  binding="#{BeanHtdEnterCostingDetails.closingDate}"/>
                    <af:commandButton text="Close Header" id="cb5"
                                      inlineStyle="font-weight:bold;"
                                      action="#{BeanHtdEnterCostingDetails.closeHeader}"/>
                    <af:spacer width="150" height="10" id="s1"/>
                    <af:commandButton actionListener="#{bindings.Commit.execute}"
                                      text="Save" disabled="false" id="cb6"
                                      inlineStyle="width:65px; text-align:center; font-weight:bold;"/>
                  </af:panelGroupLayout>
                </af:toolbar>
              </f:facet>
              <af:panelFormLayout id="pfl2" rows="1" maxColumns="2"
                                  inlineStyle="padding:5px;border:1px #adadad solid;">
                <af:inputText value="#{bindings.BudgetHeaderId.inputValue}"
                              label="#{bindings.BudgetHeaderId.hints.label}"
                              required="#{bindings.BudgetHeaderId.hints.mandatory}"
                              columns="#{bindings.BudgetHeaderId.hints.displayWidth}"
                              maximumLength="#{bindings.BudgetHeaderId.hints.precision}"
                              shortDesc="#{bindings.BudgetHeaderId.hints.tooltip}"
                              id="it13" visible="false">
                  <f:validator binding="#{bindings.BudgetHeaderId.validator}"/>
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.BudgetHeaderId.format}"/>
                </af:inputText>
                <af:inputDate value="#{bindings.EffectedDateFrom.inputValue}"
                              label="Effected Date From :"
                              required="#{bindings.EffectedDateFrom.hints.mandatory}"
                              shortDesc="#{bindings.EffectedDateFrom.hints.tooltip}"
                              id="id2" columns="30">
                  <f:validator binding="#{bindings.EffectedDateFrom.validator}"/>
                  <af:convertDateTime pattern="#{bindings.EffectedDateFrom.format}"/>
                </af:inputDate>
                <af:inputDate value="#{bindings.EffectedDateTo.inputValue}"
                              label="Effected Date To : "
                              required="#{bindings.EffectedDateTo.hints.mandatory}"
                              shortDesc="#{bindings.EffectedDateTo.hints.tooltip}"
                              id="id1" columns="30" visible="false">
                  <f:validator binding="#{bindings.EffectedDateTo.validator}"/>
                  <af:convertDateTime pattern="#{bindings.EffectedDateTo.format}"/>
                </af:inputDate>
                <af:inputText value="#{bindings.ProgramId1.inputValue}"
                              label="#{bindings.ProgramId1.hints.label}"
                              required="#{bindings.ProgramId1.hints.mandatory}"
                              columns="#{bindings.ProgramId1.hints.displayWidth}"
                              maximumLength="#{bindings.ProgramId1.hints.precision}"
                              shortDesc="#{bindings.ProgramId1.hints.tooltip}"
                              id="it14" visible="false"
                              binding="#{BeanHtdEnterCostingDetails.programId}">
                  <f:validator binding="#{bindings.ProgramId1.validator}"/>
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.ProgramId1.format}"/>
                </af:inputText>
              </af:panelFormLayout>
              <af:table value="#{bindings.VO_XxHtdBudgetLines2.collectionModel}"
                        var="row"
                        rows="#{bindings.VO_XxHtdBudgetLines2.rangeSize}"
                        emptyText="#{bindings.VO_XxHtdBudgetLines2.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.VO_XxHtdBudgetLines2.rangeSize}"
                        rowBandingInterval="0"
                        filterModel="#{bindings.VO_XxHtdBudgetLines2Query.queryDescriptor}"
                        queryListener="#{bindings.VO_XxHtdBudgetLines2Query.processQuery}"
                        filterVisible="true" varStatus="vs"
                        selectionListener="#{bindings.VO_XxHtdBudgetLines2.collectionModel.makeCurrent}"
                        rowSelection="multiple" id="t1" width="100%"
                        inlineStyle='background-image:url("images/back.png"); height:250px;;margin-top:5px;'>
                <af:column sortProperty="#{bindings.VO_XxHtdBudgetLines2.hints.ArticleId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_XxHtdBudgetLines2.hints.ArticleId.label}"
                           id="c4" visible="false">
                  <af:inputText value="#{row.bindings.ArticleId.inputValue}"
                                label="#{bindings.VO_XxHtdBudgetLines2.hints.ArticleId.label}"
                                required="#{bindings.VO_XxHtdBudgetLines2.hints.ArticleId.mandatory}"
                                columns="#{bindings.VO_XxHtdBudgetLines2.hints.ArticleId.displayWidth}"
                                maximumLength="#{bindings.VO_XxHtdBudgetLines2.hints.ArticleId.precision}"
                                shortDesc="#{bindings.VO_XxHtdBudgetLines2.hints.ArticleId.tooltip}"
                                id="it11">
                    <f:validator binding="#{row.bindings.ArticleId.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetHeaderId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetHeaderId.label}"
                           id="c10" visible="false">
                  <af:inputText value="#{row.bindings.BudgetHeaderId.inputValue}"
                                label="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetHeaderId.label}"
                                required="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetHeaderId.mandatory}"
                                columns="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetHeaderId.displayWidth}"
                                maximumLength="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetHeaderId.precision}"
                                shortDesc="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetHeaderId.tooltip}"
                                id="it12">
                    <f:validator binding="#{row.bindings.BudgetHeaderId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetHeaderId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetLinesId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetLinesId.label}"
                           id="c7" visible="false">
                  <af:inputText value="#{row.bindings.BudgetLinesId.inputValue}"
                                label="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetLinesId.label}"
                                required="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetLinesId.mandatory}"
                                columns="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetLinesId.displayWidth}"
                                maximumLength="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetLinesId.precision}"
                                shortDesc="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetLinesId.tooltip}"
                                id="it4">
                    <f:validator binding="#{row.bindings.BudgetLinesId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_XxHtdBudgetLines2.hints.BudgetLinesId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_XxHtdBudgetLines2.hints.ColorId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_XxHtdBudgetLines2.hints.ColorId.label}"
                           id="c1" visible="false">
                  <af:inputText value="#{row.bindings.ColorId.inputValue}"
                                label="#{bindings.VO_XxHtdBudgetLines2.hints.ColorId.label}"
                                required="#{bindings.VO_XxHtdBudgetLines2.hints.ColorId.mandatory}"
                                columns="#{bindings.VO_XxHtdBudgetLines2.hints.ColorId.displayWidth}"
                                maximumLength="#{bindings.VO_XxHtdBudgetLines2.hints.ColorId.precision}"
                                shortDesc="#{bindings.VO_XxHtdBudgetLines2.hints.ColorId.tooltip}"
                                id="it8">
                    <f:validator binding="#{row.bindings.ColorId.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_XxHtdBudgetLines2.hints.ProgramId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_XxHtdBudgetLines2.hints.ProgramId.label}"
                           id="c9" visible="false">
                  <af:inputText value="#{row.bindings.ProgramId.inputValue}"
                                label="#{bindings.VO_XxHtdBudgetLines2.hints.ProgramId.label}"
                                required="#{bindings.VO_XxHtdBudgetLines2.hints.ProgramId.mandatory}"
                                columns="#{bindings.VO_XxHtdBudgetLines2.hints.ProgramId.displayWidth}"
                                maximumLength="#{bindings.VO_XxHtdBudgetLines2.hints.ProgramId.precision}"
                                shortDesc="#{bindings.VO_XxHtdBudgetLines2.hints.ProgramId.tooltip}"
                                id="it5">
                    <f:validator binding="#{row.bindings.ProgramId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_XxHtdBudgetLines2.hints.ProgramId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_XxHtdBudgetLines2.hints.SizeId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_XxHtdBudgetLines2.hints.SizeId.label}"
                           id="c6" visible="false">
                  <af:inputText value="#{row.bindings.SizeId.inputValue}"
                                label="#{bindings.VO_XxHtdBudgetLines2.hints.SizeId.label}"
                                required="#{bindings.VO_XxHtdBudgetLines2.hints.SizeId.mandatory}"
                                columns="#{bindings.VO_XxHtdBudgetLines2.hints.SizeId.displayWidth}"
                                maximumLength="#{bindings.VO_XxHtdBudgetLines2.hints.SizeId.precision}"
                                shortDesc="#{bindings.VO_XxHtdBudgetLines2.hints.SizeId.tooltip}"
                                id="it7">
                    <f:validator binding="#{row.bindings.SizeId.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_XxHtdBudgetLines2.hints.Uniq.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_XxHtdBudgetLines2.hints.Uniq.label}"
                           id="c5" visible="false">
                  <af:inputText value="#{row.bindings.Uniq.inputValue}"
                                label="#{bindings.VO_XxHtdBudgetLines2.hints.Uniq.label}"
                                required="#{bindings.VO_XxHtdBudgetLines2.hints.Uniq.mandatory}"
                                columns="#{bindings.VO_XxHtdBudgetLines2.hints.Uniq.displayWidth}"
                                maximumLength="#{bindings.VO_XxHtdBudgetLines2.hints.Uniq.precision}"
                                shortDesc="#{bindings.VO_XxHtdBudgetLines2.hints.Uniq.tooltip}"
                                id="it9">
                    <f:validator binding="#{row.bindings.Uniq.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_XxHtdBudgetLines2.hints.Sizee.name}"
                           filterable="true" sortable="true" headerText="Size"
                           id="c8" width="250"
                           inlineStyle="font-weight:bold;padding-top:8px">
                  <af:inputText value="#{row.bindings.Sizee.inputValue}"
                                label="#{bindings.VO_XxHtdBudgetLines2.hints.Sizee.label}"
                                required="#{bindings.VO_XxHtdBudgetLines2.hints.Sizee.mandatory}"
                                columns="#{bindings.VO_XxHtdBudgetLines2.hints.Sizee.displayWidth}"
                                maximumLength="#{bindings.VO_XxHtdBudgetLines2.hints.Sizee.precision}"
                                shortDesc="#{bindings.VO_XxHtdBudgetLines2.hints.Sizee.tooltip}"
                                id="it6"
                                inlineStyle="padding:10px;">
                    <f:validator binding="#{row.bindings.Sizee.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_XxHtdBudgetLines2.hints.Article.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_XxHtdBudgetLines2.hints.Article.label}"
                           id="c3" width="250">
                  <af:inputText value="#{row.bindings.Article.inputValue}"
                                label="#{bindings.VO_XxHtdBudgetLines2.hints.Article.label}"
                                required="#{bindings.VO_XxHtdBudgetLines2.hints.Article.mandatory}"
                                columns="#{bindings.VO_XxHtdBudgetLines2.hints.Article.displayWidth}"
                                maximumLength="#{bindings.VO_XxHtdBudgetLines2.hints.Article.precision}"
                                shortDesc="#{bindings.VO_XxHtdBudgetLines2.hints.Article.tooltip}"
                                id="it3">
                    <f:validator binding="#{row.bindings.Article.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_XxHtdBudgetLines2.hints.Color.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_XxHtdBudgetLines2.hints.Color.label}"
                           id="c2" width="250">
                  <af:inputText value="#{row.bindings.Color.inputValue}"
                                label="#{bindings.VO_XxHtdBudgetLines2.hints.Color.label}"
                                required="#{bindings.VO_XxHtdBudgetLines2.hints.Color.mandatory}"
                                columns="#{bindings.VO_XxHtdBudgetLines2.hints.Color.displayWidth}"
                                maximumLength="#{bindings.VO_XxHtdBudgetLines2.hints.Color.precision}"
                                shortDesc="#{bindings.VO_XxHtdBudgetLines2.hints.Color.tooltip}"
                                id="it10">
                    <f:validator binding="#{row.bindings.Color.validator}"/>
                  </af:inputText>
                </af:column>
              </af:table>
            </af:panelBox>
          </af:panelGroupLayout>
        </f:facet>
        <f:facet name="side_bar"/>
      </af:pageTemplate>
    </af:form>
  </af:document>
</f:view>
<%-- 
  oracle-jdev-comment:preferred-managed-bean-name:BeanHtdEnterCostingDetails
--%>