# classes3.dex

.class public final synthetic Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/DecConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13

    check-cast p1, Landroid/service/autofill/augmented/AugmentedAutofillService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/os/IBinder;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Landroid/content/ComponentName;

    check-cast p6, Landroid/view/autofill/AutofillId;

    check-cast p7, Landroid/view/autofill/AutofillValue;

    check-cast p8, Ljava/lang/Long;

    invoke-virtual {p8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p9, Landroid/view/inputmethod/InlineSuggestionsRequest;

    check-cast p10, Landroid/service/autofill/augmented/IFillCallback;

    move-object p0, p1

    move p1, p2

    move-object p2, p3

    move p3, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, p7

    move-wide p7, v0

    invoke-static/range {p0 .. p10}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->lambda$onFillRequest$2(Ljava/lang/Object;ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V

    return-void
.end method
