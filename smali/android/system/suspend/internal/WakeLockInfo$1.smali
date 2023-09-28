# classes3.dex

.class Landroid/system/suspend/internal/WakeLockInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/suspend/internal/WakeLockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/system/suspend/internal/WakeLockInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/system/suspend/internal/WakeLockInfo;
    .registers 3

    new-instance v0, Landroid/system/suspend/internal/WakeLockInfo;

    invoke-direct {v0}, Landroid/system/suspend/internal/WakeLockInfo;-><init>()V

    invoke-virtual {v0, p1}, Landroid/system/suspend/internal/WakeLockInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/system/suspend/internal/WakeLockInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/system/suspend/internal/WakeLockInfo;
    .registers 3

    new-array v0, p1, [Landroid/system/suspend/internal/WakeLockInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/system/suspend/internal/WakeLockInfo$1;->newArray(I)[Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object p1

    return-object p1
.end method
