# classes4.dex

.class public final synthetic Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-static {p1}, Lcom/android/internal/app/ChooserListAdapter;->lambda$completeServiceTargetLoading$0(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z

    move-result p1

    return p1
.end method
