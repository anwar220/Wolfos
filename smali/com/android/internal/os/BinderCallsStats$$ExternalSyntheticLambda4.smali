# classes4.dex

.class public final synthetic Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-static {p1, p2}, Lcom/android/internal/os/BinderCallsStats;->lambda$dumpLocked$3(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p1

    return p1
.end method
