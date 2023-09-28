# classes.dex

.class public final Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;
.super Landroid/app/smartspace/uitemplatedata/BaseTemplateData;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;,
        Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCarouselAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private final mCarouselItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$1;

    invoke-direct {v0}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILjava/util/List;Landroid/app/smartspace/uitemplatedata/TapAction;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;",
            "I",
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;",
            ">;",
            "Landroid/app/smartspace/uitemplatedata/TapAction;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;I)V

    iput-object p8, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselItems:Ljava/util/List;

    iput-object p9, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    return-void
.end method

.method synthetic constructor <init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILjava/util/List;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/CarouselTemplateData-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILjava/util/List;Landroid/app/smartspace/uitemplatedata/TapAction;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselItems:Ljava/util/List;

    sget-object v0, Landroid/app/smartspace/uitemplatedata/TapAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/TapAction;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-super {p0, p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselItems:Ljava/util/List;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselItems:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    :goto_2a
    return v0
.end method

.method public getCarouselAction()Landroid/app/smartspace/uitemplatedata/TapAction;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    return-object v0
.end method

.method public getCarouselItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselItems:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselItems:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + SmartspaceCarouselUiTemplateData{mCarouselItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCarouselActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->mCarouselAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
