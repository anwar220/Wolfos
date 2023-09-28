# classes.dex

.class public final Landroid/app/assist/ActivityId;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/assist/ActivityId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityId:Landroid/os/IBinder;

.field private final mTaskId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/assist/ActivityId$1;

    invoke-direct {v0}, Landroid/app/assist/ActivityId$1;-><init>()V

    sput-object v0, Landroid/app/assist/ActivityId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    iput-object p2, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

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

    check-cast v2, Landroid/app/assist/ActivityId;

    iget v3, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    iget v4, v2, Landroid/app/assist/ActivityId;->mTaskId:I

    if-eq v3, v4, :cond_1c

    return v1

    :cond_1c
    iget-object v3, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    if-eqz v3, :cond_27

    iget-object v0, v2, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2d

    :cond_27
    iget-object v3, v2, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    if-nez v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    return v0

    :cond_2e
    :goto_2e
    return v1
.end method

.method public getTaskId()I
    .registers 2

    iget v0, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    return v0
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityId { taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
