# classes3.dex

.class public final synthetic Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/service/autofill/augmented/FillWindow;

    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1, p2}, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->lambda$show$0(Ljava/lang/Object;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
