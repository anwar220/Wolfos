# classes4.dex

.class public final synthetic Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda5;
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

    check-cast p1, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    check-cast p2, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    invoke-static {p1, p2}, Lcom/android/internal/content/om/OverlayConfig;->lambda$static$0(Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;)I

    move-result p1

    return p1
.end method
