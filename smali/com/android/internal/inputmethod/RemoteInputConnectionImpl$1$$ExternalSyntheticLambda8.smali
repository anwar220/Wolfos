# classes4.dex

.class public final synthetic Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

.field public final synthetic f$2:Ljava/lang/CharSequence;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/view/inputmethod/TextAttribute;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;->f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;

    iput-object p2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iput-object p3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;->f$2:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;->f$3:I

    iput-object p5, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;->f$4:Landroid/view/inputmethod/TextAttribute;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;->f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget-object v2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;->f$2:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;->f$3:I

    iget-object v4, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;->f$4:Landroid/view/inputmethod/TextAttribute;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->lambda$commitText$0$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method
