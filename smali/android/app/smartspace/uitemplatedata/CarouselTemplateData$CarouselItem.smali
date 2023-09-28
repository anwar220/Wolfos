# classes.dex

.class public final Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarouselItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mImage:Landroid/app/smartspace/uitemplatedata/Icon;

.field private final mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

.field private final mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private final mUpperText:Landroid/app/smartspace/uitemplatedata/Text;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$1;

    invoke-direct {v0}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mUpperText:Landroid/app/smartspace/uitemplatedata/Text;

    iput-object p2, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mImage:Landroid/app/smartspace/uitemplatedata/Icon;

    iput-object p3, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

    iput-object p4, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;-><init>(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/app/smartspace/uitemplatedata/Text;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Text;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mUpperText:Landroid/app/smartspace/uitemplatedata/Text;

    sget-object v0, Landroid/app/smartspace/uitemplatedata/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Icon;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mImage:Landroid/app/smartspace/uitemplatedata/Icon;

    sget-object v0, Landroid/app/smartspace/uitemplatedata/Text;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Text;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

    sget-object v0, Landroid/app/smartspace/uitemplatedata/TapAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/TapAction;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

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
    instance-of v1, p1, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mUpperText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mUpperText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-static {v3, v4}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mImage:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mImage:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-static {v3, v4}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    return v0
.end method

.method public getImage()Landroid/app/smartspace/uitemplatedata/Icon;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mImage:Landroid/app/smartspace/uitemplatedata/Icon;

    return-object v0
.end method

.method public getLowerText()Landroid/app/smartspace/uitemplatedata/Text;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

    return-object v0
.end method

.method public getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    return-object v0
.end method

.method public getUpperText()Landroid/app/smartspace/uitemplatedata/Text;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mUpperText:Landroid/app/smartspace/uitemplatedata/Text;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mUpperText:Landroid/app/smartspace/uitemplatedata/Text;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mImage:Landroid/app/smartspace/uitemplatedata/Icon;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarouselItem{mUpperText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mUpperText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mImage:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLowerText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTapAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

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

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mUpperText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mImage:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
