# classes3.dex

.class public final Landroid/view/InputApplicationHandle;
.super Ljava/lang/Object;


# instance fields
.field public final dispatchingTimeoutMillis:J

.field public final name:Ljava/lang/String;

.field private ptr:J

.field public final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InputApplicationHandle;->token:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    iput-wide p3, p0, Landroid/view/InputApplicationHandle;->dispatchingTimeoutMillis:J

    return-void
.end method

.method public constructor <init>(Landroid/view/InputApplicationHandle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/view/InputApplicationHandle;->token:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/InputApplicationHandle;->token:Landroid/os/IBinder;

    iget-wide v0, p1, Landroid/view/InputApplicationHandle;->dispatchingTimeoutMillis:J

    iput-wide v0, p0, Landroid/view/InputApplicationHandle;->dispatchingTimeoutMillis:J

    iget-object v0, p1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    return-void
.end method

.method private native nativeDispose()V
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/view/InputApplicationHandle;->nativeDispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
