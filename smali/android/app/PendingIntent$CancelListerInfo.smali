# classes.dex

.class final Landroid/app/PendingIntent$CancelListerInfo;
.super Lcom/android/internal/os/IResultReceiver$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CancelListerInfo"
.end annotation


# instance fields
.field private final mCancelListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/PendingIntent$CancelListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCanceled:Z

.field final synthetic this$0:Landroid/app/PendingIntent;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/app/PendingIntent$CancelListerInfo;->mCancelListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCanceled(Landroid/app/PendingIntent$CancelListerInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/PendingIntent$CancelListerInfo;->mCanceled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCanceled(Landroid/app/PendingIntent$CancelListerInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/PendingIntent$CancelListerInfo;->mCanceled:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Landroid/app/PendingIntent$CancelListerInfo;->this$0:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/app/PendingIntent$CancelListerInfo;->mCancelListeners:Landroid/util/ArraySet;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListerInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/PendingIntent$CancelListerInfo;-><init>(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/PendingIntent$CancelListerInfo;->this$0:Landroid/app/PendingIntent;

    invoke-static {v0}, Landroid/app/PendingIntent;->-$$Nest$mnotifyCancelListeners(Landroid/app/PendingIntent;)V

    return-void
.end method
