# classes2.dex

.class public final synthetic Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/inputmethod/EditorInfo;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;->f$0:Landroid/view/inputmethod/EditorInfo;

    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iput p3, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;->f$0:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;->f$2:I

    check-cast p1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    invoke-static {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->lambda$doInvalidateInput$1(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V

    return-void
.end method
