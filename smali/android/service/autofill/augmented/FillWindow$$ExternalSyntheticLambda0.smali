# classes3.dex

.class public final synthetic Landroid/service/autofill/augmented/FillWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Landroid/service/autofill/augmented/FillWindow;


# direct methods
.method public synthetic constructor <init>(Landroid/service/autofill/augmented/FillWindow;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/augmented/FillWindow$$ExternalSyntheticLambda0;->f$0:Landroid/service/autofill/augmented/FillWindow;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow$$ExternalSyntheticLambda0;->f$0:Landroid/service/autofill/augmented/FillWindow;

    invoke-virtual {v0, p1, p2}, Landroid/service/autofill/augmented/FillWindow;->lambda$update$0$android-service-autofill-augmented-FillWindow(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
