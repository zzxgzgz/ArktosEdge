/*
Copyright The Kubernetes Authors.
Copyright 2020 Authors of Arktos - file modified.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

// Code generated by client-gen. DO NOT EDIT.

package v1beta1

import (
	strings "strings"
	"time"

	v1beta1 "k8s.io/api/admissionregistration/v1beta1"
	errors "k8s.io/apimachinery/pkg/api/errors"
	v1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	types "k8s.io/apimachinery/pkg/types"
	watch "k8s.io/apimachinery/pkg/watch"
	scheme "k8s.io/client-go/kubernetes/scheme"
	rest "k8s.io/client-go/rest"
	klog "k8s.io/klog"
)

// MutatingWebhookConfigurationsGetter has a method to return a MutatingWebhookConfigurationInterface.
// A group's client should implement this interface.
type MutatingWebhookConfigurationsGetter interface {
	MutatingWebhookConfigurations() MutatingWebhookConfigurationInterface
}

// MutatingWebhookConfigurationInterface has methods to work with MutatingWebhookConfiguration resources.
type MutatingWebhookConfigurationInterface interface {
	Create(*v1beta1.MutatingWebhookConfiguration) (*v1beta1.MutatingWebhookConfiguration, error)
	Update(*v1beta1.MutatingWebhookConfiguration) (*v1beta1.MutatingWebhookConfiguration, error)
	Delete(name string, options *v1.DeleteOptions) error
	DeleteCollection(options *v1.DeleteOptions, listOptions v1.ListOptions) error
	Get(name string, options v1.GetOptions) (*v1beta1.MutatingWebhookConfiguration, error)
	List(opts v1.ListOptions) (*v1beta1.MutatingWebhookConfigurationList, error)
	Watch(opts v1.ListOptions) watch.AggregatedWatchInterface
	Patch(name string, pt types.PatchType, data []byte, subresources ...string) (result *v1beta1.MutatingWebhookConfiguration, err error)
	MutatingWebhookConfigurationExpansion
}

// mutatingWebhookConfigurations implements MutatingWebhookConfigurationInterface
type mutatingWebhookConfigurations struct {
	client  rest.Interface
	clients []rest.Interface
}

// newMutatingWebhookConfigurations returns a MutatingWebhookConfigurations
func newMutatingWebhookConfigurations(c *AdmissionregistrationV1beta1Client) *mutatingWebhookConfigurations {
	return &mutatingWebhookConfigurations{
		client:  c.RESTClient(),
		clients: c.RESTClients(),
	}
}

// Get takes name of the mutatingWebhookConfiguration, and returns the corresponding mutatingWebhookConfiguration object, and an error if there is any.
func (c *mutatingWebhookConfigurations) Get(name string, options v1.GetOptions) (result *v1beta1.MutatingWebhookConfiguration, err error) {
	result = &v1beta1.MutatingWebhookConfiguration{}
	err = c.client.Get().
		Resource("mutatingwebhookconfigurations").
		Name(name).
		VersionedParams(&options, scheme.ParameterCodec).
		Do().
		Into(result)

	return
}

// List takes label and field selectors, and returns the list of MutatingWebhookConfigurations that match those selectors.
func (c *mutatingWebhookConfigurations) List(opts v1.ListOptions) (result *v1beta1.MutatingWebhookConfigurationList, err error) {
	var timeout time.Duration
	if opts.TimeoutSeconds != nil {
		timeout = time.Duration(*opts.TimeoutSeconds) * time.Second
	}
	result = &v1beta1.MutatingWebhookConfigurationList{}
	err = c.client.Get().
		Resource("mutatingwebhookconfigurations").
		VersionedParams(&opts, scheme.ParameterCodec).
		Timeout(timeout).
		Do().
		Into(result)
	if err == nil {
		return
	}

	if !(errors.IsForbidden(err) && strings.Contains(err.Error(), "no relationship found between node")) {
		return
	}

	// Found api server that works with this list, keep the client
	for _, client := range c.clients {
		if client == c.client {
			continue
		}

		err = client.Get().
			Resource("mutatingwebhookconfigurations").
			VersionedParams(&opts, scheme.ParameterCodec).
			Timeout(timeout).
			Do().
			Into(result)

		if err == nil {
			c.client = client
			return
		}

		if err != nil && errors.IsForbidden(err) &&
			strings.Contains(err.Error(), "no relationship found between node") {
			klog.V(6).Infof("Skip error %v in list", err)
			continue
		}
	}

	return
}

// Watch returns a watch.Interface that watches the requested mutatingWebhookConfigurations.
func (c *mutatingWebhookConfigurations) Watch(opts v1.ListOptions) watch.AggregatedWatchInterface {
	var timeout time.Duration
	if opts.TimeoutSeconds != nil {
		timeout = time.Duration(*opts.TimeoutSeconds) * time.Second
	}
	opts.Watch = true
	aggWatch := watch.NewAggregatedWatcher()
	for _, client := range c.clients {
		watcher, err := client.Get().
			Resource("mutatingwebhookconfigurations").
			VersionedParams(&opts, scheme.ParameterCodec).
			Timeout(timeout).
			Watch()
		if err != nil && opts.AllowPartialWatch && errors.IsForbidden(err) {
			// watch error was not returned properly in error message. Skip when partial watch is allowed
			klog.V(6).Infof("Watch error for partial watch %v. options [%+v]", err, opts)
			continue
		}
		aggWatch.AddWatchInterface(watcher, err)
	}
	return aggWatch
}

// Create takes the representation of a mutatingWebhookConfiguration and creates it.  Returns the server's representation of the mutatingWebhookConfiguration, and an error, if there is any.
func (c *mutatingWebhookConfigurations) Create(mutatingWebhookConfiguration *v1beta1.MutatingWebhookConfiguration) (result *v1beta1.MutatingWebhookConfiguration, err error) {
	result = &v1beta1.MutatingWebhookConfiguration{}

	err = c.client.Post().
		Resource("mutatingwebhookconfigurations").
		Body(mutatingWebhookConfiguration).
		Do().
		Into(result)

	return
}

// Update takes the representation of a mutatingWebhookConfiguration and updates it. Returns the server's representation of the mutatingWebhookConfiguration, and an error, if there is any.
func (c *mutatingWebhookConfigurations) Update(mutatingWebhookConfiguration *v1beta1.MutatingWebhookConfiguration) (result *v1beta1.MutatingWebhookConfiguration, err error) {
	result = &v1beta1.MutatingWebhookConfiguration{}

	err = c.client.Put().
		Resource("mutatingwebhookconfigurations").
		Name(mutatingWebhookConfiguration.Name).
		Body(mutatingWebhookConfiguration).
		Do().
		Into(result)

	return
}

// Delete takes name of the mutatingWebhookConfiguration and deletes it. Returns an error if one occurs.
func (c *mutatingWebhookConfigurations) Delete(name string, options *v1.DeleteOptions) error {
	return c.client.Delete().
		Resource("mutatingwebhookconfigurations").
		Name(name).
		Body(options).
		Do().
		Error()
}

// DeleteCollection deletes a collection of objects.
func (c *mutatingWebhookConfigurations) DeleteCollection(options *v1.DeleteOptions, listOptions v1.ListOptions) error {
	var timeout time.Duration
	if listOptions.TimeoutSeconds != nil {
		timeout = time.Duration(*listOptions.TimeoutSeconds) * time.Second
	}
	return c.client.Delete().
		Resource("mutatingwebhookconfigurations").
		VersionedParams(&listOptions, scheme.ParameterCodec).
		Timeout(timeout).
		Body(options).
		Do().
		Error()
}

// Patch applies the patch and returns the patched mutatingWebhookConfiguration.
func (c *mutatingWebhookConfigurations) Patch(name string, pt types.PatchType, data []byte, subresources ...string) (result *v1beta1.MutatingWebhookConfiguration, err error) {
	result = &v1beta1.MutatingWebhookConfiguration{}
	err = c.client.Patch(pt).
		Resource("mutatingwebhookconfigurations").
		SubResource(subresources...).
		Name(name).
		Body(data).
		Do().
		Into(result)

	return
}
