# classes.dex

.class public final synthetic Landroid/content/pm/ShortcutInfo$$ExternalSyntheticLambda1;
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

    new-instance v0, Landroid/content/pm/Capability;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Landroid/content/pm/Capability;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
