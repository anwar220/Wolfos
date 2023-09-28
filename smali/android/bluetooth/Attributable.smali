# classes.dex

.class public interface abstract Landroid/bluetooth/Attributable;
.super Ljava/lang/Object;


# direct methods
.method public static setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/bluetooth/Attributable;",
            ">(TT;",
            "Landroid/content/AttributionSource;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/content/AttributionSource;)V

    :cond_5
    return-object p0
.end method

.method public static setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/bluetooth/Attributable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_15

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/Attributable;

    invoke-static {v2, p1}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-object p0
.end method


# virtual methods
.method public abstract setAttributionSource(Landroid/content/AttributionSource;)V
.end method
