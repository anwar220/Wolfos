# classes2.dex

.class public final synthetic Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->lambda$getFillDialogEnabledHints$1(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
