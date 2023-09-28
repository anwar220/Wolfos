# classes4.dex

.class public Lcom/android/modules/utils/SynchronousResultReceiver$Result;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/modules/utils/SynchronousResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/modules/utils/SynchronousResultReceiver$Result<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mException:Ljava/lang/RuntimeException;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/modules/utils/SynchronousResultReceiver$Result$1;

    invoke-direct {v0}, Lcom/android/modules/utils/SynchronousResultReceiver$Result$1;-><init>()V

    sput-object v0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/modules/utils/SynchronousResultReceiver$Result-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    return-void
.end method

.method public constructor <init>(Ljava/lang/RuntimeException;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    if-nez v0, :cond_9

    return-object p1

    :cond_9
    return-object v0

    :cond_a
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
