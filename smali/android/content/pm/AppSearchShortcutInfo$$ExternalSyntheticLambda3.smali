# classes.dex

.class public final synthetic Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/AppSearchShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/AppSearchShortcutInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda3;->f$0:Landroid/content/pm/AppSearchShortcutInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda3;->f$0:Landroid/content/pm/AppSearchShortcutInfo;

    check-cast p1, [B

    invoke-static {v0, p1}, Landroid/content/pm/AppSearchShortcutInfo;->$r8$lambda$hPK7EIu2ers3ysJkti_L9GdIgE0(Landroid/content/pm/AppSearchShortcutInfo;[B)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
