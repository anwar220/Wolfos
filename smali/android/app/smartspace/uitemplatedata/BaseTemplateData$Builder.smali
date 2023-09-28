# classes.dex

.class public Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLayoutWeight:I

.field private mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private final mTemplateType:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mTemplateType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mLayoutWeight:I

    return-void
.end method


# virtual methods
.method public build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .registers 10

    new-instance v8, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mTemplateType:I

    iget-object v2, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v5, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v6, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget v7, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mLayoutWeight:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;I)V

    return-object v8
.end method

.method getLayoutWeight()I
    .registers 2

    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mLayoutWeight:I

    return v0
.end method

.method getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method getSubtitleSupplemtnalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method getTemplateType()I
    .registers 2

    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mTemplateType:I

    return v0
.end method

.method public setLayoutWeight(I)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .registers 2

    iput p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mLayoutWeight:I

    return-object p0
.end method

.method public setPrimaryItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method

.method public setSubtitleItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method

.method public setSubtitleSupplementalItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method

.method public setSupplementalAlarmItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method

.method public setSupplementalLineItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method
