# classes3.dex

.class public abstract Landroid/service/translation/TranslationService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/translation/TranslationService$OnTranslationResultCallback;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.translation.TranslationService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.translation_service"

.field private static final TAG:Ljava/lang/String; = "TranslationService"


# instance fields
.field private mCallback:Landroid/view/translation/ITranslationServiceCallback;

.field private final mClientInterface:Landroid/view/translation/ITranslationDirectManager;

.field private mHandler:Landroid/os/Handler;

.field private final mInterface:Landroid/service/translation/ITranslationService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClientInterface(Landroid/service/translation/TranslationService;)Landroid/view/translation/ITranslationDirectManager;
    .registers 1

    iget-object p0, p0, Landroid/service/translation/TranslationService;->mClientInterface:Landroid/view/translation/ITranslationDirectManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/service/translation/TranslationService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/translation/TranslationService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleOnConnected(Landroid/service/translation/TranslationService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/translation/TranslationService;->handleOnConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnCreateTranslationSession(Landroid/service/translation/TranslationService;Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/translation/TranslationService;->handleOnCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnTranslationCapabilitiesRequest(Landroid/service/translation/TranslationService;IILandroid/os/ResultReceiver;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/translation/TranslationService;->handleOnTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misValidCapabilities(Landroid/service/translation/TranslationService;IILjava/util/Set;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/translation/TranslationService;->isValidCapabilities(IILjava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/translation/TranslationService$1;

    invoke-direct {v0, p0}, Landroid/service/translation/TranslationService$1;-><init>(Landroid/service/translation/TranslationService;)V

    iput-object v0, p0, Landroid/service/translation/TranslationService;->mInterface:Landroid/service/translation/ITranslationService;

    new-instance v0, Landroid/service/translation/TranslationService$2;

    invoke-direct {v0, p0}, Landroid/service/translation/TranslationService$2;-><init>(Landroid/service/translation/TranslationService;)V

    iput-object v0, p0, Landroid/service/translation/TranslationService;->mClientInterface:Landroid/view/translation/ITranslationDirectManager;

    return-void
.end method

.method private handleOnConnected(Landroid/os/IBinder;)V
    .registers 3

    invoke-static {p1}, Landroid/view/translation/ITranslationServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/translation/ITranslationServiceCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/service/translation/TranslationService;->mCallback:Landroid/view/translation/ITranslationServiceCallback;

    invoke-virtual {p0}, Landroid/service/translation/TranslationService;->onConnected()V

    return-void
.end method

.method private handleOnCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .registers 5

    new-instance v0, Landroid/service/translation/TranslationService$3;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/service/translation/TranslationService$3;-><init>(Landroid/service/translation/TranslationService;Landroid/view/translation/TranslationContext;Lcom/android/internal/os/IResultReceiver;I)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/service/translation/TranslationService;->onCreateTranslationSession(Landroid/view/translation/TranslationContext;ILjava/util/function/Consumer;)V

    return-void
.end method

.method private handleOnTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V
    .registers 5

    new-instance v0, Landroid/service/translation/TranslationService$4;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/service/translation/TranslationService$4;-><init>(Landroid/service/translation/TranslationService;IILandroid/os/ResultReceiver;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/service/translation/TranslationService;->onTranslationCapabilitiesRequest(IILjava/util/function/Consumer;)V

    return-void
.end method

.method private isValidCapabilities(IILjava/util/Set;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Landroid/view/translation/TranslationCapability;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    if-eq p2, v0, :cond_6

    return v0

    :cond_6
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/translation/TranslationCapability;

    invoke-virtual {v2}, Landroid/view/translation/TranslationCapability;->getState()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_20

    const/4 v0, 0x0

    return v0

    :cond_20
    goto :goto_a

    :cond_21
    return v0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.translation.TranslationService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/service/translation/TranslationService;->mInterface:Landroid/service/translation/ITranslationService;

    invoke-interface {v0}, Landroid/service/translation/ITranslationService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.translation.TranslationService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranslationService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConnected()V
    .registers 1

    return-void
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/translation/TranslationService;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    return-void
.end method

.method public onCreateTranslationSession(Landroid/view/translation/TranslationContext;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract onCreateTranslationSession(Landroid/view/translation/TranslationContext;ILjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationContext;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public onDisconnected()V
    .registers 1

    return-void
.end method

.method public abstract onFinishTranslationSession(I)V
.end method

.method public abstract onTranslationCapabilitiesRequest(IILjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Set<",
            "Landroid/view/translation/TranslationCapability;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/CancellationSignal;Landroid/service/translation/TranslationService$OnTranslationResultCallback;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationRequest;",
            "I",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public final updateTranslationCapability(Landroid/view/translation/TranslationCapability;)V
    .registers 5

    const-string/jumbo v0, "translation capability should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/translation/TranslationService;->mCallback:Landroid/view/translation/ITranslationServiceCallback;

    if-nez v0, :cond_13

    const-string v1, "TranslationService"

    const-string/jumbo v2, "updateTranslationCapability(): no server callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    :try_start_13
    invoke-interface {v0, p1}, Landroid/view/translation/ITranslationServiceCallback;->updateTranslationCapability(Landroid/view/translation/TranslationCapability;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1b
    return-void
.end method
