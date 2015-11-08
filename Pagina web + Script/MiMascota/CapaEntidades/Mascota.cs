//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios en este archivo pueden ocasionar un comportamiento incorrecto y se perderán si
//     el código se vuelve a generar.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Globalization;
using System.Runtime.Serialization;

namespace CapaEntidades
{
    [DataContract(IsReference = true)]
    [KnownType(typeof(Publicacion))]
    public partial class Mascota: IObjectWithChangeTracker, INotifyPropertyChanged
    {
        #region Propiedades primitivas
    
        [DataMember]
        public string nombre_mascota
        {
            get { return _nombre_mascota; }
            set
            {
                if (_nombre_mascota != value)
                {
                    _nombre_mascota = value;
                    OnPropertyChanged("nombre_mascota");
                }
            }
        }
        private string _nombre_mascota;
    
        [DataMember]
        public int id_mascota
        {
            get { return _id_mascota; }
            set
            {
                if (_id_mascota != value)
                {
                    if (ChangeTracker.ChangeTrackingEnabled && ChangeTracker.State != ObjectState.Added)
                    {
                        throw new InvalidOperationException("La propiedad 'id_mascota' forma parte de la clave del objeto y no se puede modificar. Solo se pueden realizar cambios en las propiedades de clave cuando no se realiza un seguimiento del objeto o su estado es Agregado.");
                    }
                    _id_mascota = value;
                    OnPropertyChanged("id_mascota");
                }
            }
        }
        private int _id_mascota;
    
        [DataMember]
        public string tamaño_mascota
        {
            get { return _tamaño_mascota; }
            set
            {
                if (_tamaño_mascota != value)
                {
                    _tamaño_mascota = value;
                    OnPropertyChanged("tamaño_mascota");
                }
            }
        }
        private string _tamaño_mascota;
    
        [DataMember]
        public int edad_mascota
        {
            get { return _edad_mascota; }
            set
            {
                if (_edad_mascota != value)
                {
                    _edad_mascota = value;
                    OnPropertyChanged("edad_mascota");
                }
            }
        }
        private int _edad_mascota;
    
        [DataMember]
        public Nullable<int> Publicacion_id
        {
            get { return _publicacion_id; }
            set
            {
                if (_publicacion_id != value)
                {
                    ChangeTracker.RecordOriginalValue("Publicacion_id", _publicacion_id);
                    if (!IsDeserializing)
                    {
                        if (Publicacion != null && Publicacion.id_publicacion != value)
                        {
                            Publicacion = null;
                        }
                    }
                    _publicacion_id = value;
                    OnPropertyChanged("Publicacion_id");
                }
            }
        }
        private Nullable<int> _publicacion_id;

        #endregion
        #region Propiedades de navegación
    
        [DataMember]
        public Publicacion Publicacion
        {
            get { return _publicacion; }
            set
            {
                if (!ReferenceEquals(_publicacion, value))
                {
                    var previousValue = _publicacion;
                    _publicacion = value;
                    FixupPublicacion(previousValue);
                    OnNavigationPropertyChanged("Publicacion");
                }
            }
        }
        private Publicacion _publicacion;

        #endregion
        #region ChangeTracking
    
        protected virtual void OnPropertyChanged(String propertyName)
        {
            if (ChangeTracker.State != ObjectState.Added && ChangeTracker.State != ObjectState.Deleted)
            {
                ChangeTracker.State = ObjectState.Modified;
            }
            if (_propertyChanged != null)
            {
                _propertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    
        protected virtual void OnNavigationPropertyChanged(String propertyName)
        {
            if (_propertyChanged != null)
            {
                _propertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    
        event PropertyChangedEventHandler INotifyPropertyChanged.PropertyChanged{ add { _propertyChanged += value; } remove { _propertyChanged -= value; } }
        private event PropertyChangedEventHandler _propertyChanged;
        private ObjectChangeTracker _changeTracker;
    
        [DataMember]
        public ObjectChangeTracker ChangeTracker
        {
            get
            {
                if (_changeTracker == null)
                {
                    _changeTracker = new ObjectChangeTracker();
                    _changeTracker.ObjectStateChanging += HandleObjectStateChanging;
                }
                return _changeTracker;
            }
            set
            {
                if(_changeTracker != null)
                {
                    _changeTracker.ObjectStateChanging -= HandleObjectStateChanging;
                }
                _changeTracker = value;
                if(_changeTracker != null)
                {
                    _changeTracker.ObjectStateChanging += HandleObjectStateChanging;
                }
            }
        }
    
        private void HandleObjectStateChanging(object sender, ObjectStateChangingEventArgs e)
        {
            if (e.NewState == ObjectState.Deleted)
            {
                ClearNavigationProperties();
            }
        }
    
        protected bool IsDeserializing { get; private set; }
    
        [OnDeserializing]
        public void OnDeserializingMethod(StreamingContext context)
        {
            IsDeserializing = true;
        }
    
        [OnDeserialized]
        public void OnDeserializedMethod(StreamingContext context)
        {
            IsDeserializing = false;
            ChangeTracker.ChangeTrackingEnabled = true;
        }
    
        protected virtual void ClearNavigationProperties()
        {
            Publicacion = null;
        }

        #endregion
        #region Corrección de asociación
    
        private void FixupPublicacion(Publicacion previousValue, bool skipKeys = false)
        {
            if (IsDeserializing)
            {
                return;
            }
    
            if (previousValue != null && previousValue.Mascota.Contains(this))
            {
                previousValue.Mascota.Remove(this);
            }
    
            if (Publicacion != null)
            {
                if (!Publicacion.Mascota.Contains(this))
                {
                    Publicacion.Mascota.Add(this);
                }
    
                Publicacion_id = Publicacion.id_publicacion;
            }
            else if (!skipKeys)
            {
                Publicacion_id = null;
            }
    
            if (ChangeTracker.ChangeTrackingEnabled)
            {
                if (ChangeTracker.OriginalValues.ContainsKey("Publicacion")
                    && (ChangeTracker.OriginalValues["Publicacion"] == Publicacion))
                {
                    ChangeTracker.OriginalValues.Remove("Publicacion");
                }
                else
                {
                    ChangeTracker.RecordOriginalValue("Publicacion", previousValue);
                }
                if (Publicacion != null && !Publicacion.ChangeTracker.ChangeTrackingEnabled)
                {
                    Publicacion.StartTracking();
                }
            }
        }

        #endregion
    }
}