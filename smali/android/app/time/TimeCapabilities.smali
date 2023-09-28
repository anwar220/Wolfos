# classes.dex

.class public final Landroid/app/time/TimeCapabilities;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/TimeCapabilities$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfigureAutoTimeDetectionEnabledCapability:I

.field private final mSuggestTimeManuallyCapability:I

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConfigureAutoTimeDetectionEnabledCapability(Landroid/app/time/TimeCapabilities;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuggestTimeManuallyCapability(Landroid/app/time/TimeCapabilities;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserHandle(Landroid/app/time/TimeCapabilities;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilities;
    .registers 1

    invoke-static {p0}, Landroid/app/time/TimeCapabilities;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/time/TimeCapabilities$1;

    invoke-direct {v0}, Landroid/app/time/TimeCapabilities$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/time/TimeCapabilities$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/time/TimeCapabilities$Builder;->-$$Nest$fgetmUserHandle(Landroid/app/time/TimeCapabilities$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/app/time/TimeCapabilities$Builder;->-$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    invoke-static {p1}, Landroid/app/time/TimeCapabilities$Builder;->-$$Nest$fgetmSuggestTimeManuallyCapability(Landroid/app/time/TimeCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/time/TimeCapabilities$Builder;Landroid/app/time/TimeCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/time/TimeCapabilities;-><init>(Landroid/app/time/TimeCapabilities$Builder;)V

    return-void
.end method

.method private static createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilities;
    .registers 4

    invoke-static {p0}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    new-instance v1, Landroid/app/time/TimeCapabilities$Builder;

    invoke-direct {v1, v0}, Landroid/app/time/TimeCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeCapabilities$Builder;->setConfigureAutoTimeDetectionEnabledCapability(I)Landroid/app/time/TimeCapabilities$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeCapabilities$Builder;->setSuggestTimeManuallyCapability(I)Landroid/app/time/TimeCapabilities$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/time/TimeCapabilities$Builder;->build()Landroid/app/time/TimeCapabilities;

    move-result-object v1

    return-object v1
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
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/time/TimeCapabilities;

    iget v3, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    iget v4, v2, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    iget v4, v2, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    iget-object v4, v2, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    return v0

    :cond_2e
    :goto_2e
    return v1
.end method

.method public getConfigureAutoTimeDetectionEnabledCapability()I
    .registers 2

    iget v0, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    return v0
.end method

.method public getSuggestTimeManuallyCapability()I
    .registers 2

    iget v0, p0, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

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

    const-string v1, "TimeCapabilities{mUserHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigureAutoTimeDetectionEnabledCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSuggestTimeManuallyCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v0, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    iget v0, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
