# classes.dex

.class public final Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mImage:Landroid/app/smartspace/uitemplatedata/Icon;

.field private mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

.field private mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private mUpperText:Landroid/app/smartspace/uitemplatedata/Text;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;
    .registers 9

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mUpperText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-static {v0}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mImage:Landroid/app/smartspace/uitemplatedata/Icon;

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-static {v0}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Carousel data is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_1d
    new-instance v0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mUpperText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v4, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mImage:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v5, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v6, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;-><init>(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem-IA;)V

    return-object v0
.end method

.method public setImage(Landroid/app/smartspace/uitemplatedata/Icon;)Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mImage:Landroid/app/smartspace/uitemplatedata/Icon;

    return-object p0
.end method

.method public setLowerText(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

    return-object p0
.end method

.method public setTapAction(Landroid/app/smartspace/uitemplatedata/TapAction;)Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    return-object p0
.end method

.method public setUpperText(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mUpperText:Landroid/app/smartspace/uitemplatedata/Text;

    return-object p0
.end method
