# classes.dex

.class public final Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;
.super Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mSubImageAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private final mSubImageTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/Text;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/Icon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/Text;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/Icon;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;-><init>(I)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;->mSubImageTexts:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;->mSubImages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .registers 2

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;->build()Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;
    .registers 14

    new-instance v12, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;->getTemplateType()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;->getSubtitleSupplemtnalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;->getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;->getLayoutWeight()I

    move-result v7

    iget-object v8, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;->mSubImageTexts:Ljava/util/List;

    iget-object v9, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;->mSubImages:Ljava/util/List;

    iget-object v10, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;->mSubImageAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILjava/util/List;Ljava/util/List;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/SubImageTemplateData-IA;)V

    return-object v12
.end method

.method public setSubImageAction(Landroid/app/smartspace/uitemplatedata/TapAction;)Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;->mSubImageAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    return-object p0
.end method
