# classes3.dex

.class Landroid/view/View$ViewTranslationRequestConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewTranslationRequestConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/view/translation/ViewTranslationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mCalled:Z

.field private final mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/View$ViewTranslationRequestConsumer;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/view/View$ViewTranslationRequestConsumer;->mRequests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Landroid/view/translation/ViewTranslationRequest;)V
    .registers 6

    iget-boolean v0, p0, Landroid/view/View$ViewTranslationRequestConsumer;->mCalled:Z

    if-nez v0, :cond_48

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View$ViewTranslationRequestConsumer;->mCalled:Z

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroid/view/translation/ViewTranslationRequest;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_47

    iget-object v1, p0, Landroid/view/View$ViewTranslationRequestConsumer;->mRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    const-string v2, "View.ContentCapture"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setHasTransientState(true) for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/View$ViewTranslationRequestConsumer;->this$0:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    iget-object v1, p0, Landroid/view/View$ViewTranslationRequestConsumer;->this$0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setHasTransientState(Z)V

    iget-object v1, p0, Landroid/view/View$ViewTranslationRequestConsumer;->this$0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setHasTranslationTransientState(Z)V

    :cond_47
    return-void

    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The translation Consumer is not reusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/view/translation/ViewTranslationRequest;

    invoke-virtual {p0, p1}, Landroid/view/View$ViewTranslationRequestConsumer;->accept(Landroid/view/translation/ViewTranslationRequest;)V

    return-void
.end method
