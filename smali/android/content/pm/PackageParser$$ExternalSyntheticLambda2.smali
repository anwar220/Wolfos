# classes.dex

.class public final synthetic Landroid/content/pm/PackageParser$$ExternalSyntheticLambda2;
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

    check-cast p1, Landroid/content/pm/PackageParser$Service;

    check-cast p2, Landroid/content/pm/PackageParser$Service;

    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->lambda$parseBaseApplication$2(Landroid/content/pm/PackageParser$Service;Landroid/content/pm/PackageParser$Service;)I

    move-result p1

    return p1
.end method
