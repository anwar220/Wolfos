# classes3.dex

.class Landroid/service/translation/TranslationService$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/translation/TranslationService;->handleOnCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/translation/TranslationService;

.field final synthetic val$resultReceiver:Lcom/android/internal/os/IResultReceiver;

.field final synthetic val$sessionId:I

.field final synthetic val$translationContext:Landroid/view/translation/TranslationContext;


# direct methods
.method constructor <init>(Landroid/service/translation/TranslationService;Landroid/view/translation/TranslationContext;Lcom/android/internal/os/IResultReceiver;I)V
    .registers 5

    iput-object p1, p0, Landroid/service/translation/TranslationService$3;->this$0:Landroid/service/translation/TranslationService;

    iput-object p2, p0, Landroid/service/translation/TranslationService$3;->val$translationContext:Landroid/view/translation/TranslationContext;

    iput-object p3, p0, Landroid/service/translation/TranslationService$3;->val$resultReceiver:Lcom/android/internal/os/IResultReceiver;

    iput p4, p0, Landroid/service/translation/TranslationService$3;->val$sessionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .registers 6

    const-string v0, "TranslationService"

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnCreateTranslationSession(): context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/translation/TranslationService$3;->val$translationContext:Landroid/view/translation/TranslationContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported by service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/service/translation/TranslationService$3;->val$resultReceiver:Lcom/android/internal/os/IResultReceiver;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_2e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "binder"

    iget-object v3, p0, Landroid/service/translation/TranslationService$3;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v3}, Landroid/service/translation/TranslationService;->-$$Nest$fgetmClientInterface(Landroid/service/translation/TranslationService;)Landroid/view/translation/ITranslationDirectManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/translation/ITranslationDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v2, "sessionId"

    iget v3, p0, Landroid/service/translation/TranslationService$3;->val$sessionId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Landroid/service/translation/TranslationService$3;->val$resultReceiver:Lcom/android/internal/os/IResultReceiver;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_50} :catch_51

    goto :goto_68

    :catch_51
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException sending client interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_68
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroid/service/translation/TranslationService$3;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
