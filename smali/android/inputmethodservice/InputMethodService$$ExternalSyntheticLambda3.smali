# classes2.dex

.class public final synthetic Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# instance fields
.field public final synthetic f$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public synthetic constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda3;->f$0:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method


# virtual methods
.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda3;->f$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->lambda$new$0$android-inputmethodservice-InputMethodService(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method
