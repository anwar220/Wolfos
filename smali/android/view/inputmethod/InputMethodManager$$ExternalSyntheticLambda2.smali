# classes2.dex

.class public final synthetic Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;->f$4:I

    iput p6, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;->f$5:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 9

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;->f$2:I

    iget v3, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;->f$3:I

    iget v4, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;->f$4:I

    iget v5, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;->f$5:I

    move-object v6, p1

    check-cast v6, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    invoke-static/range {v0 .. v6}, Landroid/view/inputmethod/InputMethodManager;->lambda$updateSelection$3(IIIIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V

    return-void
.end method
