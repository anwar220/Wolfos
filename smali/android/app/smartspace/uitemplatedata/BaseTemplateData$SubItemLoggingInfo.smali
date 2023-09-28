# classes.dex

.class public final Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubItemLoggingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFeatureType:I

.field private final mInstanceId:I

.field private final mPackageName:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo$1;

    invoke-direct {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IILjava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    iput p2, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    iput-object p3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/CharSequence;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;-><init>(IILjava/lang/CharSequence;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

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
    instance-of v1, p1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    iget v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    iget v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    if-ne v3, v4, :cond_24

    iget v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    iget v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    if-ne v3, v4, :cond_24

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    return v0
.end method

.method public getFeatureType()I
    .registers 2

    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    return v0
.end method

.method public getInstanceId()I
    .registers 2

    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

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

    const-string v1, "SubItemLoggingInfo{mInstanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFeatureType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

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

    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method
