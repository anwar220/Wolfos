# classes2.dex

.class public final synthetic Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public synthetic constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;->f$0:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;->f$0:Landroid/inputmethodservice/InputMethodService;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onStylusHandwritingMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
