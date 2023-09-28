# classes.dex

.class public final Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData$Builder;
.super Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mCombinedCardDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;-><init>(I)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData$Builder;->mCombinedCardDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .registers 2

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData$Builder;->build()Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData;
    .registers 12

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData$Builder;->mCombinedCardDataList:Ljava/util/List;

    if-eqz v0, :cond_2a

    new-instance v0, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData;

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData$Builder;->getTemplateType()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData$Builder;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData$Builder;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData$Builder;->getSubtitleSupplemtnalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData$Builder;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData$Builder;->getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData$Builder;->getLayoutWeight()I

    move-result v8

    iget-object v9, p0, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData$Builder;->mCombinedCardDataList:Ljava/util/List;

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILjava/util/List;Landroid/app/smartspace/uitemplatedata/CombinedCardsTemplateData-IA;)V

    return-object v0

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please assign a value to all @NonNull args."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
