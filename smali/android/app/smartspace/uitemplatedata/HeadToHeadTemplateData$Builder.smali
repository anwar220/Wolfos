# classes.dex

.class public final Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
.super Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

.field private mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

.field private mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .registers 2

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->build()Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;
    .registers 18

    move-object/from16 v0, p0

    new-instance v16, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;

    invoke-virtual/range {p0 .. p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getTemplateType()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getSubtitleSupplemtnalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getLayoutWeight()I

    move-result v8

    iget-object v9, v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v10, v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v11, v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v12, v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v13, v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v14, v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILandroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData-IA;)V

    return-object v16
.end method

.method public setHeadToHeadAction(Landroid/app/smartspace/uitemplatedata/TapAction;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    return-object p0
.end method

.method public setHeadToHeadFirstCompetitorIcon(Landroid/app/smartspace/uitemplatedata/Icon;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    return-object p0
.end method

.method public setHeadToHeadFirstCompetitorText(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    return-object p0
.end method

.method public setHeadToHeadSecondCompetitorIcon(Landroid/app/smartspace/uitemplatedata/Icon;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    return-object p0
.end method

.method public setHeadToHeadSecondCompetitorText(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    return-object p0
.end method

.method public setHeadToHeadTitle(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    return-object p0
.end method
