# classes3.dex

.class public final synthetic Landroid/provider/FontsContract$$ExternalSyntheticLambda0;
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

    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Landroid/provider/FontsContract;->lambda$static$13([B[B)I

    move-result p1

    return p1
.end method
