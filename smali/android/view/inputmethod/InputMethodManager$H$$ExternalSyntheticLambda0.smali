# classes2.dex

.class public final synthetic Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ImeFocusController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/ImeFocusController;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;->f$0:Landroid/view/ImeFocusController;

    iput-boolean p2, p0, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;->f$0:Landroid/view/ImeFocusController;

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->lambda$handleMessage$0(Landroid/view/ImeFocusController;Z)V

    return-void
.end method
