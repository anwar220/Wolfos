# classes.dex

.class Landroid/app/Activity$ManagedDialog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagedDialog"
.end annotation


# instance fields
.field mArgs:Landroid/os/Bundle;

.field mDialog:Landroid/app/Dialog;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity$ManagedDialog-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity$ManagedDialog;-><init>()V

    return-void
.end method
