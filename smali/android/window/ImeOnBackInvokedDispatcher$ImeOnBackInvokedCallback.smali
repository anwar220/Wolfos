# classes4.dex

.class Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ImeOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImeOnBackInvokedCallback"
.end annotation


# instance fields
.field private final mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

.field private final mId:I

.field private final mPriority:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmPriority(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I
    .registers 1

    iget p0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mPriority:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetId(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I
    .registers 1

    invoke-direct {p0}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->getId()I

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/window/IOnBackInvokedCallback;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    iput p2, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mId:I

    iput p3, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mPriority:I

    return-void
.end method

.method private getId()I
    .registers 2

    iget v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mId:I

    return v0
.end method


# virtual methods
.method getIOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;
    .registers 2

    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    return-object v0
.end method

.method public onBackInvoked()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/window/IOnBackInvokedCallback;->onBackInvoked()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "ImeBackDispatcher"

    const-string v2, "Exception when invoking forwarded callback. e: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method
