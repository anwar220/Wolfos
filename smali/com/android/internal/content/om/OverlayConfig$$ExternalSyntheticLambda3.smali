# classes4.dex

.class public final synthetic Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda3;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda3;->f$0:Ljava/util/HashMap;

    check-cast p1, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;

    check-cast p2, Ljava/lang/Boolean;

    check-cast p3, Ljava/io/File;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/content/om/OverlayConfig;->lambda$getOverlayPackageInfos$3(Ljava/util/HashMap;Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;Ljava/lang/Boolean;Ljava/io/File;)V

    return-void
.end method
