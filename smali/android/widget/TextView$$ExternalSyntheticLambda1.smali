# classes4.dex

.class public final synthetic Landroid/widget/TextView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/view/textclassifier/TextClassification;

    invoke-static {p1}, Landroid/widget/TextView;->lambda$handleClick$1(Landroid/view/textclassifier/TextClassification;)V

    return-void
.end method
