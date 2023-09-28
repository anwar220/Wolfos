# classes2.dex

.class public abstract Landroid/view/contentcapture/ContentCaptureSession;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureSession$FlushReason;
    }
.end annotation


# static fields
.field public static final FLUSH_REASON_FULL:I = 0x1

.field public static final FLUSH_REASON_IDLE_TIMEOUT:I = 0x5

.field public static final FLUSH_REASON_SESSION_CONNECTED:I = 0x7

.field public static final FLUSH_REASON_SESSION_FINISHED:I = 0x4

.field public static final FLUSH_REASON_SESSION_STARTED:I = 0x3

.field public static final FLUSH_REASON_TEXT_CHANGE_TIMEOUT:I = 0x6

.field public static final FLUSH_REASON_VIEW_ROOT_ENTERED:I = 0x2

.field private static final ID_GENERATOR:Ljava/security/SecureRandom;

.field private static final INITIAL_CHILDREN_CAPACITY:I = 0x5

.field public static final STATE_ACTIVE:I = 0x2

.field public static final STATE_BY_APP:I = 0x40

.field public static final STATE_DISABLED:I = 0x4

.field public static final STATE_DUPLICATED_ID:I = 0x8

.field public static final STATE_FLAG_SECURE:I = 0x20

.field public static final STATE_INTERNAL_ERROR:I = 0x100

.field public static final STATE_NOT_WHITELISTED:I = 0x200

.field public static final STATE_NO_RESPONSE:I = 0x80

.field public static final STATE_NO_SERVICE:I = 0x10

.field public static final STATE_SERVICE_DIED:I = 0x400

.field public static final STATE_SERVICE_RESURRECTED:I = 0x1000

.field public static final STATE_SERVICE_UPDATING:I = 0x800

.field public static final STATE_WAITING_FOR_SERVER:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final UNKNOWN_STATE:I


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/contentcapture/ContentCaptureSession;",
            ">;"
        }
    .end annotation
.end field

.field private mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

.field private mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

.field private mDestroyed:Z

.field protected final mId:I

.field private final mLock:Ljava/lang/Object;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureSession;->ID_GENERATOR:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-static {}, Landroid/view/contentcapture/ContentCaptureSession;->getRandomSessionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/contentcapture/ContentCaptureSession;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mState:I

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput p1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    return-void
.end method

.method constructor <init>(Landroid/view/contentcapture/ContentCaptureContext;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureSession;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureContext;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    return-void
.end method

.method public static getFlushReasonAsString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKOWN-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17  #0x7
    const-string v0, "CONNECTED"

    return-object v0

    :pswitch_1a  #0x6
    const-string v0, "TEXT_CHANGE"

    return-object v0

    :pswitch_1d  #0x5
    const-string v0, "IDLE"

    return-object v0

    :pswitch_20  #0x4
    const-string v0, "FINISHED"

    return-object v0

    :pswitch_23  #0x3
    const-string v0, "STARTED"

    return-object v0

    :pswitch_26  #0x2
    const-string v0, "VIEW_ROOT"

    return-object v0

    :pswitch_29  #0x1
    const-string v0, "FULL"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_26  #00000002
        :pswitch_23  #00000003
        :pswitch_20  #00000004
        :pswitch_1d  #00000005
        :pswitch_1a  #00000006
        :pswitch_17  #00000007
    .end packed-switch
.end method

.method private static getRandomSessionId()I
    .registers 1

    :goto_0
    sget-object v0, Landroid/view/contentcapture/ContentCaptureSession;->ID_GENERATOR:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_9
    goto :goto_0
.end method

.method protected static getStateAsString(I)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_14

    const-string v1, "UNKNOWN"

    goto :goto_1d

    :cond_14
    const-class v1, Landroid/view/contentcapture/ContentCaptureSession;

    int-to-long v2, p0

    const-string v4, "STATE_"

    invoke-static {v1, v4, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->destroy()V

    return-void
.end method

.method public final createContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
    .registers 6

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v1, :cond_38

    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createContentCaptureSession("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", child="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3b
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_47

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    :cond_47
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-object v0

    :catchall_4e
    move-exception v2

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_4e

    throw v2
.end method

.method public final destroy()V
    .registers 9

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    if-eqz v1, :cond_2d

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v1, :cond_2b

    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): already destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    monitor-exit v0

    return-void

    :cond_2d
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_5e

    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy(): state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mState:I

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_bd

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v2, :cond_88

    sget-object v2, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " children first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    const/4 v2, 0x0

    :goto_89
    if-ge v2, v1, :cond_bd

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/contentcapture/ContentCaptureSession;
    :try_end_93
    .catchall {:try_start_3 .. :try_end_93} :catchall_c2

    :try_start_93
    invoke-virtual {v3}, Landroid/view/contentcapture/ContentCaptureSession;->destroy()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97
    .catchall {:try_start_93 .. :try_end_96} :catchall_c2

    goto :goto_ba

    :catch_97
    move-exception v4

    :try_start_98
    sget-object v5, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception destroying child session #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ba
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    :cond_bd
    monitor-exit v0
    :try_end_be
    .catchall {:try_start_98 .. :try_end_be} :catchall_c2

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->onDestroy()V

    return-void

    :catchall_c2
    move-exception v1

    :try_start_c3
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v1
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "id: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    if-eqz v0, :cond_1c

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureContext;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_1c
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "destroyed: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_76

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_76

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "number children: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const/4 v3, 0x0

    :goto_5b
    if-ge v3, v2, :cond_76

    iget-object v4, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :cond_76
    monitor-exit v0

    return-void

    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_1f .. :try_end_7a} :catchall_78

    throw v1
.end method

.method abstract flush(I)V
.end method

.method public final getContentCaptureContext()Landroid/view/contentcapture/ContentCaptureContext;
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    return-object v0
.end method

.method public final getContentCaptureSessionId()Landroid/view/contentcapture/ContentCaptureSessionId;
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    if-nez v0, :cond_d

    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    :cond_d
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    return v0
.end method

.method abstract getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;
.end method

.method abstract internalNotifySessionPaused()V
.end method

.method abstract internalNotifySessionResumed()V
.end method

.method abstract internalNotifyViewAppeared(Landroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
.end method

.method abstract internalNotifyViewDisappeared(Landroid/view/autofill/AutofillId;)V
.end method

.method abstract internalNotifyViewInsetsChanged(Landroid/graphics/Insets;)V
.end method

.method abstract internalNotifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
.end method

.method public abstract internalNotifyViewTreeEvent(Z)V
.end method

.method isContentCaptureEnabled()Z
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public newAutofillId(Landroid/view/autofill/AutofillId;J)Landroid/view/autofill/AutofillId;
    .registers 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "hostId cannot be virtual: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/view/autofill/AutofillId;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    return-object v0
.end method

.method abstract newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
.end method

.method public final newViewStructure(Landroid/view/View;)Landroid/view/ViewStructure;
    .registers 3

    new-instance v0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final newVirtualViewStructure(Landroid/view/autofill/AutofillId;J)Landroid/view/ViewStructure;
    .registers 6

    new-instance v0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;-><init>(Landroid/view/autofill/AutofillId;JI)V

    return-object v0
.end method

.method public final notifySessionPaused()V
    .registers 2

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionPaused()V

    return-void
.end method

.method public final notifySessionResumed()V
    .registers 2

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionResumed()V

    return-void
.end method

.method public final notifyViewAppeared(Landroid/view/ViewStructure;)V
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    instance-of v0, p1, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    if-eqz v0, :cond_15

    move-object v0, p1

    check-cast v0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    invoke-virtual {p0, v0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewAppeared(Landroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final notifyViewDisappeared(Landroid/view/autofill/AutofillId;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewDisappeared(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public final notifyViewInsetsChanged(Landroid/graphics/Insets;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewInsetsChanged(Landroid/graphics/Insets;)V

    return-void
.end method

.method public final notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final notifyViewsDisappeared(Landroid/view/autofill/AutofillId;[J)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "hostId cannot be virtual: %s"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v1, "virtual ids cannot be empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_20

    return-void

    :cond_20
    array-length v0, p2

    :goto_21
    if-ge v3, v0, :cond_32

    aget-wide v1, p2, v3

    new-instance v4, Landroid/view/autofill/AutofillId;

    iget v5, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v4, p1, v1, v2, v5}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    invoke-virtual {p0, v4}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewDisappeared(Landroid/view/autofill/AutofillId;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_32
    return-void
.end method

.method abstract onDestroy()V
.end method

.method public final setContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
.end method
