# classes4.dex

.class Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;
.super Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$getCursorCapsMode$9(ILjava/lang/Integer;)[B
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetCursorCapsModeProto(II)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getSurroundingText$3(IIILandroid/view/inputmethod/SurroundingText;)[B
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string v2, "clearMetaKeyStatesFromA11yIme"

    invoke-static {v0, v2, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 13

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v7, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string v1, "commitTextFromA11yIme"

    invoke-static {v0, v1, v7}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string v2, "deleteSurroundingTextFromA11yIme"

    invoke-static {v0, v2, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    invoke-static {}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$smuseImeTracing()Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda6;-><init>(I)V

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const-string v3, "getCursorCapsModeFromA11yIme"

    invoke-static {v0, v3, p3, v1, v2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method public getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .registers 14

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v7, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)V

    invoke-static {}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$smuseImeTracing()Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda4;-><init>(III)V

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    const-string v2, "getSurroundingTextFromA11yIme"

    invoke-static {v0, v2, p5, v7, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method synthetic lambda$clearMetaKeyStates$10$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_24

    :cond_20
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    return-void

    :cond_24
    :goto_24
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$commitText$0$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 8

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_2d

    :cond_20
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return-void

    :cond_2d
    :goto_2d
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "commitText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$deleteSurroundingText$4$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 7

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_24

    :cond_20
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    return-void

    :cond_24
    :goto_24
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$getCursorCapsMode$8$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .registers 7

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eq v0, v1, :cond_14

    return-object v2

    :cond_14
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_2e

    :cond_25
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_2e
    :goto_2e
    const-string v1, "RemoteInputConnectionImpl"

    const-string v3, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method synthetic lambda$getSurroundingText$2$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .registers 10

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    return-object v2

    :cond_10
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const-string v1, "RemoteInputConnectionImpl"

    if-eqz v0, :cond_5a

    iget-object v3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_5a

    :cond_23
    if-gez p2, :cond_3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning null to getSurroundingText due to an invalid beforeLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3c
    if-gez p3, :cond_55

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning null to getSurroundingText due to an invalid afterLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_55
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v1

    return-object v1

    :cond_5a
    :goto_5a
    const-string v3, "getSurroundingText on inactive InputConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method synthetic lambda$performContextMenuAction$7$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_24

    :cond_20
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    return-void

    :cond_24
    :goto_24
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "performContextMenuAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$performEditorAction$6$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_24

    :cond_20
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    return-void

    :cond_24
    :goto_24
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "performEditorAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$sendKeyEvent$5$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 6

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_24

    :cond_20
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void

    :cond_24
    :goto_24
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "sendKeyEvent on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$setSelection$1$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 7

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_24

    :cond_20
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    return-void

    :cond_24
    :goto_24
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setSelection on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string/jumbo v2, "performContextMenuActionFromA11yIme"

    invoke-static {v0, v2, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string/jumbo v2, "performEditorActionFromA11yIme"

    invoke-static {v0, v2, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    const-string/jumbo v2, "sendKeyEventFromA11yIme"

    invoke-static {v0, v2, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo v2, "setSelectionFromA11yIme"

    invoke-static {v0, v2, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
