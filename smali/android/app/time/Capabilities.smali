# classes.dex

.class public final Landroid/app/time/Capabilities;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/Capabilities$CapabilityState;
    }
.end annotation


# static fields
.field public static final CAPABILITY_NOT_ALLOWED:I = 0x14

.field public static final CAPABILITY_NOT_APPLICABLE:I = 0x1e

.field public static final CAPABILITY_NOT_SUPPORTED:I = 0xa

.field public static final CAPABILITY_POSSESSED:I = 0x28


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
