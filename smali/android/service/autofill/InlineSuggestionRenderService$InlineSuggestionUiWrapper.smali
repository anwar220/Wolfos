# classes3.dex

.class final Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;
.super Landroid/service/autofill/IInlineSuggestionUi$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/InlineSuggestionRenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InlineSuggestionUiWrapper"
.end annotation


# instance fields
.field private final mUiImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)V
    .registers 3

    invoke-direct {p0}, Landroid/service/autofill/IInlineSuggestionUi$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;->mUiImpl:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getSurfacePackage(Landroid/service/autofill/ISurfacePackageResultCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;->mUiImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->getSurfacePackage(Landroid/service/autofill/ISurfacePackageResultCallback;)V

    :cond_d
    return-void
.end method

.method public releaseSurfaceControlViewHost()V
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;->mUiImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->releaseSurfaceControlViewHost()V

    :cond_d
    return-void
.end method
