# classes.dex

.class public final synthetic Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Landroid/content/pm/AppSearchShortcutInfo;->lambda$toShortcutInfo$1(I)[Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method