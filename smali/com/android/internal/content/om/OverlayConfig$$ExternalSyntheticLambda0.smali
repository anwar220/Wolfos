# classes4.dex

.class public final synthetic Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    check-cast p1, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-direct {v0, p1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    return-object v0
.end method