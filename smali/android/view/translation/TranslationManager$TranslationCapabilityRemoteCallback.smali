# classes2.dex

.class Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;
.super Landroid/os/IRemoteCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/TranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslationCapabilityRemoteCallback"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;->mListener:Ljava/util/function/Consumer;

    return-void
.end method

.method private onTranslationCapabilityUpdate(Landroid/os/Bundle;)V
    .registers 4

    nop

    const-string v0, "translation_capabilities"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/translation/TranslationCapability;

    iget-object v1, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;->mListener:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$sendResult$0$android-view-translation-TranslationManager$TranslationCapabilityRemoteCallback(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;->onTranslationCapabilityUpdate(Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$sendResult$1$android-view-translation-TranslationManager$TranslationCapabilityRemoteCallback(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda0;-><init>(Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendResult(Landroid/os/Bundle;)V
    .registers 3

    new-instance v0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda1;-><init>(Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;Landroid/os/Bundle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
